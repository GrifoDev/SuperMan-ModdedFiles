.class Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;,
        Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$SystemEvents;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;


# virtual methods
.method public onCoverTapLeft()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCoverTapMid()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCoverTapRight()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
