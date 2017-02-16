.class public final Lcom/samsung/android/vr/GearVrManager;
.super Ljava/lang/Object;
.source "GearVrManager.java"

# interfaces
.implements Landroid/app/IVRManager;
.implements Lcom/samsung/android/vr/IGearVrManagerLocal;


# static fields
.field public static final FEATURE_HMT:Ljava/lang/String; = "com.samsung.feature.hmt"

.field public static final HMT_EVENT_ABNORMAL:I = 0x4

.field public static final HMT_EVENT_DOCK:I = 0x1

.field public static final HMT_EVENT_MOUNT:I = 0x10

.field public static final HMT_EVENT_SENSOR_BOOTING_WITHOUT_TA:I = 0x100

.field public static final HMT_EVENT_SENSOR_BOOTING_WITH_TA:I = 0x200

.field public static final HMT_EVENT_SENSOR_CONNECTED_TA:I = 0x400

.field public static final HMT_EVENT_UNDOCK:I = 0x2

.field public static final HMT_EVENT_UNMOUNT:I = 0x20

.field public static final PACKAGENAME_VRSERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field public static final PACKAGENAME_VRSETUPWIZARD:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field public static final PACKAGENAME_VRSETUPWIZARD_STUB:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"

.field public static final PACKAGENAME_VRSYSTEM:Ljava/lang/String; = "com.samsung.android.hmt.vrsystem"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/vr/IGearVrManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/vr/IGearVrManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/vr/IGearVrManagerService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    .line 41
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    .line 38
    return-void
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager;->acquireVrClocks(Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method public acquireVrClocks(Ljava/lang/String;II)[I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "optionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPowerLevelState()I
    .locals 2

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->getPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->getThreadId(ILjava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVRBright()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVRColorTemperature()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDock()Z
    .locals 2

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isDock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isMount()Z
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isMount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 2

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isVrMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->releaseVrClocks(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseVrClocks(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 354
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    iget-object v3, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/String;

    .prologue
    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->removeSysNode(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 2

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->retrieveEnableFrequencyLevels()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public return2EnableFreqLev()[I
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method public setAffinity(I[I)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mhz"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2
    .param p1, "blocked"    # Z

    .prologue
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setHomeKeyBlocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "exemptedPackages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .prologue
    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReadyForVrMode(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setReadyForVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseControlType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseControlType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadAffinity(I[I)I
    .locals 2
    .param p1, "tid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadGroup(II)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "group"    # I

    .prologue
    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadScheduler(III)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadScheduler(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVRBright(I)V
    .locals 2
    .param p1, "bright"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRColorTemperature(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRComfortableView(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRLowPersistence(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRMode(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDir"    # Z

    .prologue
    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
