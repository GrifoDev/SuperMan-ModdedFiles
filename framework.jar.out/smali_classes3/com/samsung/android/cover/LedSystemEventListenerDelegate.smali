.class Lcom/samsung/android/cover/LedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I


# instance fields
.field private mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$LedSystemEventListener;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/cover/LedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
