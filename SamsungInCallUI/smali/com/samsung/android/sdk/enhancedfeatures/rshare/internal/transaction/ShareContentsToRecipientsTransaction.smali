.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

.field private mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method private stop(IILjava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fail to ShareContentsToRecipientsTransaction, st=%d r=%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    const-string v0, "ShareContentsToRecipientsTransaction Cancel "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause(I)V
    .locals 2

    const-string v0, "ShareContentsToRecipientsTransaction paused "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unable to authenticate user"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getToList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getToList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContactUtil;->convertSharingListForServer([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getContentsToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setContentsToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getReqId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setReqId(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setBody(Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest$Body;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->isSendPush()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setSendPush(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->getGcmType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setGcmType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareContentsToRecipientsTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareContentsToRecipientsRequest;->isSilencePush()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;->setSilencePush(Z)V

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->sharedContentsByPost(Lcom/samsung/android/sdk/ssf/share/io/SharedContentsByPostRequest;)V

    goto :goto_0
.end method
