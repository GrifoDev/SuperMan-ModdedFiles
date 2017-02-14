.class public interface abstract Lcom/samsung/android/desktopmode/IDesktopModeCallback;
.super Ljava/lang/Object;
.source "IDesktopModeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDesktopDockConnectionChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDesktopModeChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
