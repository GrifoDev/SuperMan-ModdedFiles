.class public interface abstract Lcom/samsung/android/desktopmode/IDesktopModeListener;
.super Ljava/lang/Object;
.source "IDesktopModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
