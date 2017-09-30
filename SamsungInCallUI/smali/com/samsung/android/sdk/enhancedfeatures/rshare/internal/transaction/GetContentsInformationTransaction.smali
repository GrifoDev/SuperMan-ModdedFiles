.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field protected static final TAG:Ljava/lang/String;

.field protected static final TOKEN_GET_SHARED_CONTENT:I = 0x1

.field protected static final TOKEN_INSERT_CONTENTS:I = 0x2

.field protected static final TOKEN_INSERT_MEDIA:I = 0x3


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

.field private final mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

.field private mLastNotiTimestamp:J

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;

.field private mRequestType:Ljava/lang/String;

.field private mShareCode:Ljava/lang/String;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mToListReq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mLastNotiTimestamp:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mAppList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mRequestType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getShareCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mShareCode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getShareCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mShareCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getContentToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentToken:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getContentStart()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentStart:I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getContentCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentCount:I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->isRecepientListRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mToListReq:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mShareCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    return-object v0
.end method


# virtual methods
.method public cancel(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setting_noti_timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last noti timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentStart:I

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentCount:I

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentToken:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mToListReq:Z

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mRequestType:Ljava/lang/String;

    move-object v7, v4

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->getSharedContentsInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;IILjava/lang/Object;ILjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mShareCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentStart:I

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mContentCount:I

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mShareCode:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mToListReq:Z

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsInformationTransaction;->mRequestType:Ljava/lang/String;

    move-object v6, v4

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->getSharedContentsInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/SsfListener;IILjava/lang/Object;ILjava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mContentToken and mShareCode are null both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
