.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    return-void
.end method

.method private token2Str(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "TOKEN_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_INSERT_MEDIA"

    goto :goto_0

    :pswitch_1
    const-string v0, "TOKEN_INSERT_CONTENT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    const-string v0, "onApplyBatchComplete"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onBulkInsertComplete(ILjava/lang/Object;Ljava/lang/Integer;)V
    .locals 9

    const/16 v1, -0x45

    const/4 v6, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "An exception that indicates that the SQLite database is full."

    :goto_0
    invoke-static {v1, v0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "unable to generate share session"

    const/4 v1, -0x4

    goto :goto_0

    :cond_2
    const-string v0, "share session has been generated"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transaction already started = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x9

    const-string v1, "transaction already started"

    const-string v4, "transaction already started"

    invoke-static {v0, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    const-string v4, "rshare_public_upload"

    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->add(Ljava/lang/Object;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;)V

    const-string v1, "[WakeLock] acquire pm lock"

    const-string v2, "ContentWorkerTask"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadPinCodeContentsRequest;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    const-string v4, "rshare_share"

    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;Z)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsPrivateRequest;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    const-string v4, "rshare_private_upload"

    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadPrivateTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    const-string v4, "rshare_share"

    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/FileShareTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/FileShareTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_2
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    const-string v0, "onDeleteComplete"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 11

    const/4 v10, -0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInsertComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->token2Str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unable to generate share session"

    const-string v1, "unable to generate share session"

    invoke-static {v10, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Landroid/content/ContentValues;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "media_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "path"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "content_type"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "file_size"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "filename"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "tag"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getContentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->uploadSmallChunk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chunk_size"

    const/16 v7, 0x1400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    aput-object v6, v4, v1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getOutboxContentUri(J)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->startBulkInsert(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "sql lite exception, storeContent is failed"

    const-string v2, "ContentWorkerTask"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentWorkerTask"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "unable to generate share session"

    const-string v1, "unable to generate share/update session"

    invoke-static {v10, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;->token2Str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    const-string v0, "onUpdateComplete"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
