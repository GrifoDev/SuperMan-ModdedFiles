.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;
    }
.end annotation


# static fields
.field private static final GROUP_PROJECTION:[Ljava/lang/String;

.field private static final TOKEN_GET_FOLDER_INFO:I = 0x65

.field private static final TOKEN_GET_FOLDER_TOKEN:I = 0x66


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContentCount:I

.field private mContentStart:Ljava/lang/String;

.field private mDeleted:Z

.field private mFolderInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

.field private mFolderName:Ljava/lang/String;

.field private mFolderPath:Ljava/lang/String;

.field private mFolderToken:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mModifiedAfter:J

.field private mOrsRegionUrl:Ljava/lang/String;

.field private mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;

.field private mRevision:I

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mStopped:Z

.field private mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "folder_token"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ors_region_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->GROUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mDeleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mStopped:Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mGroupId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getFolderorFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getModifiedAfter()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mModifiedAfter:J

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getContentCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mContentCount:I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getContentStart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mContentStart:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->isContentDeleted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mDeleted:Z

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;->getRevision()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mRevision:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->stopByError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mContentStart:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mContentCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mRevision:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mDeleted:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mOrsRegionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mOrsRegionUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mModifiedAfter:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method private stopByError(ILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mStopped:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already stopped mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mStopped:Z

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mFolderInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestManager is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    const-string v0, "GetFolderInfoTransaction Cancel "

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause(I)V
    .locals 2

    const-string v0, "GetFolderInfoTransaction paused "

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v5, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group_id"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mGroupId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->mGroupId:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;->GROUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_GET_FOLDER_INFO"

    goto :goto_0

    :pswitch_1
    const-string v0, "TOKEN_GET_FOLDER_TOKEN"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
