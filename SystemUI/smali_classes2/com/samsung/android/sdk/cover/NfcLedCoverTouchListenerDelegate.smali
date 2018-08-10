.class Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;


# virtual methods
.method public onCoverTapLeft()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTapMid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTapRight()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTouchAccept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTouchReject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
