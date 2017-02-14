.class final Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SerializingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SerializingExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .locals 7

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->suspensions:I
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->queue:Ljava/util/Deque;
    invoke-static {v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$400(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v5, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z
    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    monitor-exit v4

    return-void

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->workOnQueue()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    # getter for: Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SerializingExecutor;

    const/4 v3, 0x0

    # setter for: Lcom/google/common/util/concurrent/SerializingExecutor;->isWorkerRunning:Z
    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/SerializingExecutor;->access$202(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
