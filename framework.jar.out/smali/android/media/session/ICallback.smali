.class public interface abstract Landroid/media/session/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ICallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
