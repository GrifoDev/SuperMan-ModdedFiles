.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_DELETE_ORS_SSF:I = 0x67

.field private static final TOKEN_DELETE_SHARE_SSF:I = 0x66

.field private static final TOKEN_REMOVE_SHARE:I = 0x65


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContentToken:Ljava/lang/String;

.field private mDirectoryName:Ljava/lang/String;

.field private mGcmPriority:Ljava/lang/String;

.field private mMediaSize:J

.field private mReduceQuota:Z

.field private mRestored:Z

.field private mSsflistener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mStopped:Z

.field private removeListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;ZJ)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mStopped:Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const v1, 0x124f8

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mSsflistener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mRestored:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mGcmPriority:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->removeListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-wide p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mMediaSize:J

    iput-boolean p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mReduceQuota:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mContentToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mSsflistener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mDirectoryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mReduceQuota:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mMediaSize:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->restoreQuota(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->removeListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method private restoreQuota(J)V
    .locals 13

    const-wide/16 v2, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mRestored:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mRestored:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v0, "byte_usage"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "uploaded_file_count"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sub-long v0, v6, p1

    cmp-long v8, v0, v2

    if-lez v8, :cond_2

    :goto_1
    add-int/lit8 v2, v5, -0x1

    const-string v3, "byte_usage"

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "uploaded_file_count"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Restore usage %d -> %d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v3, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Restore fileCount %d -> %d"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->put(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method private stop(IILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mStopped:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already stopped mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mStopped:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->removeListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 8

    const/16 v7, -0x2f

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mMediaToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mSsflistener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mGcmPriority:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->deleteSharedContentsInfo(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;ZLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON parser error. checking correct response value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/RemoveShareTranasction;->stop(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOKEN_UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_REMOVE_SHARE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
