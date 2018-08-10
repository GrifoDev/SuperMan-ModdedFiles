.class public interface abstract Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
.super Ljava/lang/Object;
.source "IDesktopModeBlocker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBlocked()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
