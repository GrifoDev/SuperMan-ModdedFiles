.class Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;


# virtual methods
.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
