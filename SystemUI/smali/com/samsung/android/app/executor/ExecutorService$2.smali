.class Lcom/samsung/android/app/executor/ExecutorService$2;
.super Lcom/samsung/android/app/executor/IExecutorService$Stub;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/executor/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/executor/ExecutorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/executor/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {p0}, Lcom/samsung/android/app/executor/IExecutorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService sendCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # setter for: Lcom/samsung/android/app/executor/ExecutorService;->mJsonCommandFromEm:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/samsung/android/app/executor/ExecutorService;->access$302(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/app/executor/ExecutorService;->access$400(Lcom/samsung/android/app/executor/ExecutorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;-><init>(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/samsung/android/app/executor/IExecutorServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ExecutorService setCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService$2;->this$0:Lcom/samsung/android/app/executor/ExecutorService;

    # setter for: Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    invoke-static {v0, p1}, Lcom/samsung/android/app/executor/ExecutorService;->access$102(Lcom/samsung/android/app/executor/ExecutorService;Lcom/samsung/android/app/executor/IExecutorServiceCallback;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    return-void
.end method
