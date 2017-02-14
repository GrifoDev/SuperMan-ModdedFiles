.class Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;
.super Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;
.source "SemContextManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemContextListenerDelegate"
.end annotation


# instance fields
.field private final mClientInfo:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsHistoryData:Z

.field private final mListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mIsHistoryData:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mIsHistoryData:Z

    iput-object p5, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mClientInfo:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate$1;-><init>(Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/context/SemContextManager;->-get1(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mClientInfo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mClientInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public declared-synchronized semContextCallback(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$SemContextListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
