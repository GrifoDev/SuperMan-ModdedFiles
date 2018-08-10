.class public interface abstract Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;
.super Ljava/lang/Object;
.source "ISamsungKeyProvisioningManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract create_keySession(BLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract get_keyUid(BBLjava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract release_keySession()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract set_otaServer(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract verify_key(BBLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract write_key(BBLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
