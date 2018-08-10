.class public abstract Landroid/app/SynchronousUserSwitchObserver;
.super Landroid/app/UserSwitchObserver;
.source "SynchronousUserSwitchObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserSwitching(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_1
    throw v0
.end method
