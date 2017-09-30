.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;
.super Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;


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
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
