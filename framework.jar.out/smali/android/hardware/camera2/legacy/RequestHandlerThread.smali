.class public Landroid/hardware/camera2/legacy/RequestHandlerThread;
.super Landroid/os/HandlerThread;
.source "RequestHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHandlerThread$1;
    }
.end annotation


# static fields
.field public static final MSG_POKE_IDLE_HANDLER:I = -0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private volatile mHandler:Landroid/os/Handler;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private final mStarted:Landroid/os/ConditionVariable;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;-><init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasAnyMessages([I)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, p1, v1

    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method protected onLooperPrepared()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public removeMessages([I)V
    .locals 5

    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, p1, v1

    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public waitAndGetHandler()Landroid/os/Handler;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public waitUntilIdle()V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
