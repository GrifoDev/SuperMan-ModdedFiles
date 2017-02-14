.class public interface abstract Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback;
.super Ljava/lang/Object;
.source "IFaceServiceLockoutResetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceServiceLockoutResetCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLockoutReset(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
