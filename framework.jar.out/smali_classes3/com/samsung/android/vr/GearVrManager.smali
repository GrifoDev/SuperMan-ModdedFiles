.class public final Lcom/samsung/android/vr/GearVrManager;
.super Ljava/lang/Object;
.source "GearVrManager.java"

# interfaces
.implements Landroid/app/IVRManager;
.implements Lcom/samsung/android/vr/IGearVrManagerLocal;
.implements Lcom/samsung/android/vr/SemGearVrManager;


# static fields
.field public static final DEFAULT_GLOBAL_VR_DEVELOPER_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_LAUNCH_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_PLATFORM_MODE:I = 0x1

.field public static final DEFAULT_GLOBAL_VR_RECENTS_MODE:I = 0x0

.field public static final DEFAULT_GLOBAL_VR_SETUPWIZARD_COMPLETED:I = 0x0

.field public static final FEATURE_HMT:Ljava/lang/String; = "com.samsung.feature.hmt"

.field public static final HMT_EVENT_ABNORMAL:I = 0x4

.field public static final HMT_EVENT_DOCK:I = 0x1

.field public static final HMT_EVENT_MOUNT:I = 0x10

.field public static final HMT_EVENT_SENSOR_BOOTING_WITHOUT_TA:I = 0x100

.field public static final HMT_EVENT_SENSOR_BOOTING_WITH_TA:I = 0x200

.field public static final HMT_EVENT_SENSOR_CONNECTED_TA:I = 0x400

.field public static final HMT_EVENT_UNDOCK:I = 0x2

.field public static final HMT_EVENT_UNMOUNT:I = 0x20

.field public static final HMT_EVENT_VR_ENTERED:I = 0x40

.field public static final HMT_EVENT_VR_EXITED:I = 0x80

.field public static final HMT_MASK_ALL:I = 0xfff

.field public static final HMT_MASK_DOCK:I = 0xf

.field public static final HMT_MASK_MOUNT:I = 0x30

.field public static final HMT_MASK_TA:I = 0xf00

.field public static final HMT_MASK_VR_MODE:I = 0xc0

.field public static final HMT_TYPE_TETHERED:I = 0x1000

.field public static final PACKAGENAME_VRSERVICE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc"

.field public static final PACKAGENAME_VRSETUPWIZARD:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizard"

.field public static final PACKAGENAME_VRSETUPWIZARD_STUB:Ljava/lang/String; = "com.samsung.android.app.vrsetupwizardstub"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PACKAGENAME_VRSYSTEM:Ljava/lang/String; = "com.samsung.android.hmt.vrsystem"

.field public static final SETTINGS_GLOBAL_VR_DEVELOPER_MODE:Ljava/lang/String; = "vrmode_developer_mode"

.field public static final SETTINGS_GLOBAL_VR_LAUNCH_MODE:Ljava/lang/String; = "vr_launch_mode"

.field public static final SETTINGS_GLOBAL_VR_PLATFORM_MODE:Ljava/lang/String; = "vr_platform_mode"

.field public static final SETTINGS_GLOBAL_VR_RECENTS_MODE:Ljava/lang/String; = "vr_recents_mode"

.field public static final SETTINGS_GLOBAL_VR_SETUPWIZARD_COMPLETED:Ljava/lang/String; = "vr_setupwizard_completed"

.field public static final VR_ACTIVITY_ALLOW_BYPASS_SETUP_WIZARD:I = 0x14

.field public static final VR_ACTIVITY_ALLOW_NON_VR_ACTIVITY:I = 0xa

.field public static final VR_ACTIVITY_NONE:I = 0x0

.field public static final VR_ACTIVITY_VR:I = 0x1

.field public static final VR_LAUNCH_MODE_START_IMMEDIATELY:I = 0x1

.field public static final VR_LAUNCH_MODE_START_INSERT_GEARVR:I = 0x0

.field public static final VR_LAUNCH_MODE_START_SPLASH_SCREEN:I = 0x2

.field public static final VR_PLATFORM_DAYDREAM:I = 0x2

.field public static final VR_PLATFORM_GEARVR:I = 0x1

.field public static final VR_PLATFORM_GEARVRF:I = 0x3

.field public static final VR_PLATFORM_MIXED:I = 0x0

.field public static final VR_RECENTS_ENABLED:I = 0x1

.field public static final VR_RECENTS_INCLUDE_VR_TASK:I = 0x10

.field public static final VR_RECENTS_OVERRIDE_RECENTS:I = 0x2

.field public static final VR_RECENTS_USE_GEAR_VR_TRANSITION:I = 0x20


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/vr/IGearVrManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/vr/IGearVrManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager;->acquireVrClocks(Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method public acquireVrClocks(Ljava/lang/String;II)[I
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

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

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPowerLevelState()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->getPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->getThreadId(ILjava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVRBright()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVRColorTemperature()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVrRecentsMode()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->getVrRecentsMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isConnected()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDock()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isDock()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isMount()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isMount()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVRMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->isVrMode()Z

    move-result v0

    return v0
.end method

.method public isVrMode()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->isVrMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/vr/GearVrManager;->releaseVrClocks(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseVrClocks(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/vr/GearVrManager;->mToken:Landroid/os/IBinder;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

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

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->removeSysNode(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->retrieveEnableFrequencyLevels()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public return2EnableFreqLev()[I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/vr/GearVrManager;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method public setAffinity(I[I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeKeyBlocked(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setHomeKeyBlocked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReadyForVrMode(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setReadyForVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseControlType(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseControlType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemMouseShowMouseEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadAffinity(I[I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadGroup(II)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadScheduler(III)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->setThreadScheduler(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVRBright(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRColorTemperature(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRComfortableView(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRLowPersistence(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVRMode(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVrMode(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerService;->setVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public vrManagerVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vrOVRVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not support"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager;->mService:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
