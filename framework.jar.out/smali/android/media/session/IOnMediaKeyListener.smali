.class public interface abstract Landroid/media/session/IOnMediaKeyListener;
.super Ljava/lang/Object;
.source "IOnMediaKeyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IOnMediaKeyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
