.class public Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source "CameraDeviceUserShim.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;,
        Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final OPEN_CAMERA_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraDeviceUserShim"


# instance fields
.field private final mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

.field private final mConfigureLock:Ljava/lang/Object;

.field private mConfiguring:Z

.field private final mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

.field private mSurfaceIdCounter:I

.field private final mSurfaces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    iput-object p3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p4, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    iput-object p5, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    return-void
.end method

.method public static connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    .locals 12

    new-instance v4, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-direct {v4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;-><init>(I)V

    new-instance v5, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-direct {v5, p0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;-><init>(Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    const/16 v0, 0x1388

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->waitForOpen(I)I

    move-result v8

    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->getCamera()Landroid/hardware/Camera;

    move-result-object v9

    invoke-static {v8}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->throwOnServiceError(I)V

    invoke-virtual {v9}, Landroid/hardware/Camera;->disableShutterSound()Z

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p1, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-static {v10, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {v2, p1, v9, v3, v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;-><init>(ILandroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/ICameraDeviceCallbacks;)V

    new-instance v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;-><init>(ILandroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)V

    return-object v0

    :catch_0
    move-exception v6

    new-instance v0, Landroid/os/ServiceSpecificException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to get initial parameters: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static translateErrorsFromCamera1(I)I
    .locals 1

    sget v0, Landroid/system/OsConstants;->EACCES:I

    neg-int v0, v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public beginConfigure()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot begin configure, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot begin configure, configuration change already in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method public cancelRequest(I)J
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot cancel request, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot cancel request, configuration change in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->cancelRequest(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 5

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "Cannot create default request, device has been closed."

    const-string/jumbo v3, "CameraDeviceUserShim"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createRequestTemplate(Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/hardware/camera2/impl/CameraMetadataNative;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "createDefaultRequest - invalid templateId specified"

    const-string/jumbo v3, "CameraDeviceUserShim"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public createInputStream(III)I
    .locals 3

    const-string/jumbo v0, "Creating input stream is not supported on legacy devices"

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I
    .locals 5

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Cannot create stream, device has been closed."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_1

    const-string/jumbo v0, "Cannot create stream, beginConfigure hasn\'t been called yet."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getRotation()I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "Cannot create stream, stream rotation is not supported."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaceIdCounter:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v1
.end method

.method public deleteStream(I)V
    .locals 5

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Cannot delete stream, device has been closed."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_1

    const-string/jumbo v0, "Cannot delete stream, no configuration change in progress."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot delete stream, stream id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " doesn\'t exist."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CameraDeviceUserShim"

    const-string/jumbo v1, "Cannot disconnect, device has already been closed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraInit:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraLooper;->close()V

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->close()V

    throw v0
.end method

.method public endConfigure(I)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Cannot end configure, device has been closed."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "LEGACY devices do not support this operating mode"

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-nez v2, :cond_2

    const-string/jumbo v0, "Cannot end configure, no configuration change in progress."

    const-string/jumbo v2, "CameraDeviceUserShim"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mSurfaces:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->configureOutputs(Landroid/util/SparseArray;)I

    return-void
.end method

.method public finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 3

    const-string/jumbo v0, "Finalizing output configuration is not supported on legacy devices"

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public flush()J
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot flush, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot flush, configuration change in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->flush()J

    move-result-wide v2

    return-wide v2
.end method

.method public getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    const-string/jumbo v0, "CameraDeviceUserShim"

    const-string/jumbo v1, "getCameraInfo unimplemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 3

    const-string/jumbo v0, "Getting input surface is not supported on legacy devices"

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public prepare(I)V
    .locals 3

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot prepare stream, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mCameraCallbacks:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->onPrepared(I)V

    return-void
.end method

.method public prepare2(II)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->prepare(I)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot submit request, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v1

    return-object v1
.end method

.method public submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot submit request list, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot submit request, configuration change in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v1

    return-object v1
.end method

.method public tearDown(I)V
    .locals 3

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot tear down stream, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public waitUntilIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Cannot wait until idle, device has been closed."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfigureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mConfiguring:Z

    if-eqz v1, :cond_1

    const-string/jumbo v0, "Cannot wait until idle, configuration change in progress."

    const-string/jumbo v1, "CameraDeviceUserShim"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->mLegacyDevice:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->waitUntilIdle()V

    return-void
.end method
