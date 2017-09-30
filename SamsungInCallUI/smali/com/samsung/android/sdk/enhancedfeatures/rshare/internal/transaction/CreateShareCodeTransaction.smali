.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_CREATE_SHARE_CODE:I = 0x68


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method private isAuth()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "user not authenticated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0xd

    const-string v2, "authentication failed"

    const-string v3, "unable to authenticate user"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "Permission exception error"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x2e

    const-string v2, "Permission exception error"

    const-string v3, "Required permission not found"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    const-string v0, "UpdateShareCodeTransaction Cancel "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause(I)V
    .locals 2

    const-string v0, "UpdateShareCodeTransaction paused "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 6

    const/16 v5, 0x68

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->isAuth()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CreateShareCode isAuth failed"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "remoteshare"

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->type:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->share_type:I

    iput-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->contents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->getContentsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->contents_total_to_upload:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->title:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    new-instance v1, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;-><init>()V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setReqId(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setBody(Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setUserData(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeZone(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSendPush(Z)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setGcmType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSilencePush(Z)V

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->shareContents(Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreateShareCodeRequest;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->type:Ljava/lang/String;

    goto :goto_1
.end method
