.class public Landroid/service/oemlock/OemLockManager;
.super Ljava/lang/Object;
.source "OemLockManager.java"


# instance fields
.field private mService:Landroid/service/oemlock/IOemLockService;


# direct methods
.method public constructor <init>(Landroid/service/oemlock/IOemLockService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    return-void
.end method


# virtual methods
.method public isOemUnlockAllowedByCarrier()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByCarrier()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isOemUnlockAllowedByUser()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1}, Landroid/service/oemlock/IOemLockService;->isOemUnlockAllowedByUser()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1, p1, p2}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/service/oemlock/OemLockManager;->mService:Landroid/service/oemlock/IOemLockService;

    invoke-interface {v1, p1}, Landroid/service/oemlock/IOemLockService;->setOemUnlockAllowedByUser(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
