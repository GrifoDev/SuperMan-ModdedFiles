.class Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "CoverPowerKeyListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;,
        Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$SystemEvents;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverPowerKeyListener;

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverPowerKeyListenerDelegate$ListenerDelegateHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
