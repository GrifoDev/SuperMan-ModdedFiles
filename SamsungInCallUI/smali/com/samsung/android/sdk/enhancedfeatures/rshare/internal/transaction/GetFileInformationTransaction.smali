.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_GET_FILE_INFO:I = 0x64

.field private static final TOKEN_GET_FILE_INFO_PROGRESS:I = 0x65


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mFileInfoPublicTokenListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

.field private mPublicToken:Ljava/lang/String;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mStopped:Z

.field private mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mStopped:Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mFileInfoPublicTokenListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mAuthCode:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "700452"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mTag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number format exception, set tag without prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mTag:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->stopByError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mFileInfoPublicTokenListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    return-object v0
.end method

.method private stop(IILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mStopped:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already stopped mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mStopped:Z

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_error_message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mFileInfoPublicTokenListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$2;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private stopByError(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x191

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFileInformationTransaction Cancel mPublicToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFileInformationTransaction Pause mPublicToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mTag:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mPublicToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mAuthCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFileInformationTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/file/FileManager;->getFileInfoUsingPublicToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    return-void
.end method
