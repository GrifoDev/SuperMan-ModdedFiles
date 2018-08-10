.class Lcom/samsung/android/cover/CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "CoverStateListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_ATTACH_STATE_CHANGE:I = 0x1

.field private static final MSG_LISTEN_COVER_SWITCH_STATE_CHANGE:I = 0x0

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2


# instance fields
.field private mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

.field private final mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$CoverStateListener;->toString()Ljava/lang/String;

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

    iget-object v3, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

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

    iget-object v2, p0, Lcom/samsung/android/cover/CoverStateListenerDelegate;->mHandler:Lcom/samsung/android/cover/CoverStateListenerDelegate$ListenerDelegateHandler;

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
