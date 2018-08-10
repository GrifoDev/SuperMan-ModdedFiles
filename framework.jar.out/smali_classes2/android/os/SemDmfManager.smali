.class public Landroid/os/SemDmfManager;
.super Ljava/lang/Object;
.source "SemDmfManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDmfManager"

.field private static final mLock:Ljava/lang/Object;

.field private static sDebug:Z


# instance fields
.field private mService:Landroid/os/ISemDmfManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/SemDmfManager;->sDebug:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/ISemDmfManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    iput-object p1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    return-void
.end method

.method private printStackTrace(Ljava/lang/Exception;)V
    .locals 2

    sget-boolean v0, Landroid/os/SemDmfManager;->sDebug:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "SemDmfManager"

    const-string/jumbo v1, "error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1, p1}, Landroid/os/ISemDmfManager;->sendAddBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public addPowerUri(Landroid/os/SemPowerInfo;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1, p1}, Landroid/os/ISemDmfManager;->sendAddPowerUri(Landroid/os/SemPowerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/SemDmfManager;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getVersion()I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/SemDmfManager;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public initializeService()V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->initializeService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/SemDmfManager;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDmfEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->isDmfEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/SemDmfManager;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public refreshGeofence(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1, p1}, Landroid/os/ISemDmfManager;->sendRefreshGeofence(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1, p1}, Landroid/os/ISemDmfManager;->sendRemoveBatteryAlert(Landroid/os/SemBatteryAlertInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removePowerUri(Landroid/os/SemPowerInfo;)V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1, p1}, Landroid/os/ISemDmfManager;->sendRemovePowerUri(Landroid/os/SemPowerInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/os/SemDmfManager;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopBatteryAlert()V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->sendStopBatteryAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopDevicePowerMonitor()V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->sendStopDevicePowerMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopGeofenceHelper()V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->sendStopGeofenceHelper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopLocationMonitor()V
    .locals 3

    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/os/SemDmfManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/SemDmfManager;->mService:Landroid/os/ISemDmfManager;

    invoke-interface {v1}, Landroid/os/ISemDmfManager;->sendStopLocationMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
