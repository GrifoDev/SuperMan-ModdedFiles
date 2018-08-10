.class public Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;
.super Ljava/lang/Thread;
.source "RmmTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RmmTaskThread"
.end annotation


# instance fields
.field private mQuit:Z

.field final synthetic this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->mQuit:Z

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->mQuit:Z

    invoke-virtual {p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->interrupt()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[RmmTaskQueue] take"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    invoke-static {v2}, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->-get0(Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[RmmTaskQueue] destroyed by Timer"

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue$RmmTaskThread;->this$1:Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;

    iget-object v2, v2, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskQueue;->this$0:Lcom/samsung/android/rlc/service/RmmTask;

    iget-object v3, v1, Lcom/samsung/android/rlc/service/RmmTask$RmmTaskObject;->intent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/service/RmmTask;->-wrap0(Lcom/samsung/android/rlc/service/RmmTask;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/rlc/service/RmmTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RmmTaskQueue] Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
