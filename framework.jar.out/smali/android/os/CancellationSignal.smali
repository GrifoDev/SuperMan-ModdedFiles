.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$OnCancelListener;,
        Landroid/os/CancellationSignal$Transport;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTransport()Landroid/os/ICancellationSignal;
    .locals 2

    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal$Transport;)V

    return-object v0
.end method

.method public static fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .locals 1

    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/CancellationSignal$Transport;

    iget-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private waitForCancelFinishedLocked()V
    .locals 2

    :goto_0
    iget-boolean v1, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    iget-object v1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    iget-object v2, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :goto_0
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_2
    move-exception v3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    throw v3

    :catchall_3
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRemote(Landroid/os/ICancellationSignal;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    iget-boolean v1, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    :try_start_2
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public throwIfCanceled()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
