.class public interface abstract Landroid/service/oemlock/IOemLockService;
.super Ljava/lang/Object;
.source "IOemLockService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isOemUnlockAllowedByCarrier()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isOemUnlockAllowedByUser()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOemUnlockAllowedByCarrier(Z[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOemUnlockAllowedByUser(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
