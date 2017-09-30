.class public abstract Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final HANDLER:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

.field private static final MESSAGE_POST_CANCEL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field protected mProgress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TProgress;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

.field private mWorkerRunnable:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->HANDLER:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mWorkerRunnable:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mWorkerRunnable:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->PENDING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->HANDLER:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onPostExecute(Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->PENDING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$3;->$SwitchMap$com$samsung$android$sdk$enhancedfeatures$shop$internal$utils$AsyncWorker$Status:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->RUNNING:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mWorkerRunnable:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;

    iput-object p1, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$WorkerRunnable;->mParams:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getProgress()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TProgress;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mProgress:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatus()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mStatus:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->mProgress:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->HANDLER:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$AsyncWorkerResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
