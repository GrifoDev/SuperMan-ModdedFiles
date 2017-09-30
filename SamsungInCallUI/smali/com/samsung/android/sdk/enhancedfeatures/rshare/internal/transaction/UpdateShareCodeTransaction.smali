.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method private stop(IILjava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Fail to UpdateShareCodeTransaction, st=%d r=%d "

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

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;->getReqId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    const-string v0, "UpdateShareCodeTransaction Cancel "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause(I)V
    .locals 2

    const-string v0, "UpdateShareCodeTransaction paused "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 6

    new-instance v1, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;

    new-instance v4, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->getOriginal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;->getReqId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setReqId(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UpdateShareCodeRequest;->getContentsToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setContentsToken(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setTimeZone(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UpdateShareCodeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;->setBody(Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest$Body;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->updateSharedContents(Lcom/samsung/android/sdk/ssf/share/io/UpdateSharedContentsRequest;)V

    return-void
.end method
