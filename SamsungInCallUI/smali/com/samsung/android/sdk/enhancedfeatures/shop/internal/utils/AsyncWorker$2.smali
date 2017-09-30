.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;-><init>(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->access$300()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->access$300()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
