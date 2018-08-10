.class Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_LEFT:I = 0x2

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_MID:I = 0x3

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_RIGHT:I = 0x4


# instance fields
.field private mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

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

    iget-object v0, p0, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

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
