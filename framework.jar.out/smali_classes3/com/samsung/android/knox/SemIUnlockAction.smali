.class public interface abstract Lcom/samsung/android/knox/SemIUnlockAction;
.super Ljava/lang/Object;
.source "SemIUnlockAction.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/SemIUnlockAction$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUnlock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
