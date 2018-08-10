.class Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;
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
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsHistoryData:Z

.field private mListener:Lcom/samsung/android/hardware/context/SemContextListener;

.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;)Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    return p1
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-set0(Lcom/samsung/android/hardware/context/SemContextManager;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/hardware/context/SemContextManager;Lcom/samsung/android/hardware/context/SemContextListener;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/ISemContextCallback$Stub;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V

    return-void
.end method

.method private set(Lcom/samsung/android/hardware/context/SemContextListener;Landroid/os/Looper;Z)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mIsHistoryData:Z

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextManager;->-get1(Lcom/samsung/android/hardware/context/SemContextManager;)Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/hardware/context/SemContextListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContextManager;->-get0(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mListener:Lcom/samsung/android/hardware/context/SemContextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->this$0:Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/SemContextManager;->-get0(Lcom/samsung/android/hardware/context/SemContextManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/SemContextManager$ListenerDelegate;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
