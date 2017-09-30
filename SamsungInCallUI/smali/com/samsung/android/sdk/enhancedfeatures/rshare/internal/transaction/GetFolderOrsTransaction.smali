.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_TOKEN_PROJECTION:[Ljava/lang/String;

.field protected static final TAG:Ljava/lang/String;

.field private static final TOKEN_CHECK_FOLDER:I = 0x5

.field protected static final TOKEN_GET_SHARED_CONTENT:I = 0x1

.field protected static final TOKEN_INSERT_CONTENTS:I = 0x2

.field private static final TOKEN_INSERT_FOLDER:I = 0x4

.field protected static final TOKEN_INSERT_MEDIA:I = 0x3

.field private static final TOKEN_UPDATE_FOLDER:I = 0x6


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContentCount:I

.field private mContentStart:I

.field private mContentToken:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "folder_token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "public_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->CONTENT_TOKEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentStart:I

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mAppList:Ljava/util/ArrayList;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appid is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mShareAppid:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mShareCid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentToken:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction$QueryHandler;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentStart:I

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentCount:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentToken:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const-string v10, "app"

    move-object v7, v4

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->getSharedContentsInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;IILjava/lang/Object;ILjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentToken  is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->mContentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_GET_SHARED_CONTENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "TOKEN_INSERT_CONTENTS"

    goto :goto_0

    :pswitch_2
    const-string v0, "TOKEN_INSERT_MEDIA"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
