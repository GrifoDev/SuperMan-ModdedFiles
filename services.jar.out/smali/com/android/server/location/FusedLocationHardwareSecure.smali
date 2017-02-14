.class public Lcom/android/server/location/FusedLocationHardwareSecure;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FusedLocationHardwareSecure.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

.field private final mPermissionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/location/IFusedLocationHardware;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    iput-object p2, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    return-void
.end method

.method private checkPermissions()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    const-string/jumbo v2, "Permission \'%s\' not granted to access FusedLocationHardware"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mPermissionId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->flushBatchedLocations()V

    return-void
.end method

.method public getSupportedBatchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->getSupportedBatchSize()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->getVersion()I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDeviceContext(I)V

    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->injectDiagnosticData(Ljava/lang/String;)V

    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    return-void
.end method

.method public requestBatchOfLocations(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->requestBatchOfLocations(I)V

    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->startBatching(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method public stopBatching(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->stopBatching(I)V

    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDeviceContextInjection()Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0}, Landroid/hardware/location/IFusedLocationHardware;->supportsDiagnosticDataInjection()Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1}, Landroid/hardware/location/IFusedLocationHardware;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    return-void
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/location/FusedLocationHardwareSecure;->checkPermissions()V

    iget-object v0, p0, Lcom/android/server/location/FusedLocationHardwareSecure;->mLocationHardware:Landroid/hardware/location/IFusedLocationHardware;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IFusedLocationHardware;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    return-void
.end method
