.class public interface abstract Lcom/samsung/android/virtualspace/IVSScreenCallback;
.super Ljava/lang/Object;
.source "IVSScreenCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
