.class public Lcom/samsung/android/emergencymode/SemEmergencyManager;
.super Ljava/lang/Object;
.source "SemEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/emergencymode/SemEmergencyManager$1;
    }
.end annotation


# static fields
.field private static final SERVICE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "EmergencyManager"

.field private static isBootCompleted:Z

.field private static isSystemReady:Z

.field private static mIsLoadedFeatures:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

.field private static mSupport_BCM:Z

.field private static mSupport_DexMode:Z

.field private static mSupport_EM:Z

.field private static mSupport_UPSM:Z

.field private static sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/emergencymode/SemEmergencyManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/emergencymode/SemEmergencyManager;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->triggerEmergencyMode(ZIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager$1;-><init>(Lcom/samsung/android/emergencymode/SemEmergencyManager;)V

    iput-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    return-void
.end method

.method private ensureServiceConnected()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EmergencyManager"

    const-string/jumbo v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "emergency_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/emergencymode/IEmergencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ensureServiceConnected e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBootState()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    const-string/jumbo v0, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBootState: sys.boot_completed is 1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "stopped"

    const-string/jumbo v3, "init.svc.bootanim"

    const-string/jumbo v4, "running"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    :cond_1
    const-string/jumbo v0, "EmergencyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBootState: init.svc.bootanim is running : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isBootCompleted:Z

    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isSystemReady:Z

    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    sget-object v4, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v3, "android"

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    move-object p0, v0

    :try_start_2
    const-string/jumbo v3, "EmergencyManager"

    const-string/jumbo v5, "android createPackageContext successful"

    invoke-static {v3, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-direct {v3, v2, p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    :cond_1
    sget-object v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;->sInstance:Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v3, "EmergencyManager"

    const-string/jumbo v5, "NameNotFoundException or SecurityException createPackageContext failed"

    invoke-static {v3, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_4
    const-string/jumbo v3, "EmergencyManager"

    const-string/jumbo v5, "android createPackageContext null"

    invoke-static {v3, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static isBatteryConservingMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "battery_conserving_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isBatteryConversingModeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    return v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isEmergencyModeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    return v0
.end method

.method public static isGrayScreenSupported()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x1

    const-string/jumbo v5, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Temporary Change]support MDNIE ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]  AMOLED display ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]  isGrayScreenSupported ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static isUltraPowerSavingModeSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->loadFloatingFeatures()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    return v0
.end method

.method private static loadFloatingFeatures()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_DexMode:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mIsLoadedFeatures:Z

    return-void
.end method

.method private registerReceiver()V
    .locals 6

    const-string/jumbo v2, "EmergencyManager"

    const-string/jumbo v3, "registerReceiver"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.csc.sales_code"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerReceiver Scode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "DCM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.nttdocomo.android.epsmodecontrol.action.CHANGE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized startService(Ljava/lang/String;ZIZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    const-string/jumbo v2, "clearBootTime"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_3

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "flag"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "skipdialog"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.emergencymode.service"

    const-string/jumbo v4, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EmergencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_3
    const-string/jumbo v2, "initForEMState"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopService()V
    .locals 6

    const-class v3, Lcom/samsung/android/emergencymode/SemEmergencyManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.emergencymode.service"

    const-string/jumbo v5, "com.sec.android.emergencymode.service.EmergencyServiceStarter"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopService e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private triggerEmergencyMode(ZIZ)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    const-string/jumbo v0, "EmergencyManager"

    const-string/jumbo v1, "req trigger, start Service"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    const-string/jumbo v0, "EmergencyManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addAppToLauncher(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->addAppToLauncher(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAppToLauncher failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public canSetMode()Z
    .locals 15

    const/4 v14, 0x0

    sget-boolean v11, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    return v14

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "desktopmode"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-boolean v11, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_DexMode:Z

    if-eqz v11, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v11

    if-eqz v11, :cond_1

    return v14

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v9, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v11, "2.0"

    const-string/jumbo v12, "version"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_0
    iget-object v11, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "device_provisioned"

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "SETUP_WIZARD_UNFINISHED;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_3
    if-eqz v8, :cond_4

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LLM_ENABLING;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-eqz v1, :cond_5

    xor-int/lit8 v11, v5, 0x1

    if-eqz v11, :cond_5

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NOT_OWNER_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_5
    if-nez v10, :cond_6

    const-string/jumbo v11, "EmergencyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "not Allowed EmergencyMode due to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v10

    :catch_0
    move-exception v3

    const-string/jumbo v11, "EmergencyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "canSetMode Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_3

    return v4

    :cond_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkInvalidBroadcast failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public checkInvalidProcess(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getBootState()Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_3

    return v4

    :cond_3
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkInvalidProcess failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public checkModeType(I)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_2

    return v4

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkModeType(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkModeType failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_2

    return v4

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkValidIntentAction failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_2

    return v4

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/emergencymode/IEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkValidPackage failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public getEmergencyState()I
    .locals 5

    const/4 v4, -0x1

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_2

    return v4

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->getEmergencyState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmergencyState failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public getModeType()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_conserving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public isEmergencyMode()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isModifying()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    return v4

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isModifying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isModifying failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public isScreenOn()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_2

    return v4

    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenOn failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public isUserPackageBlocked()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    return v4

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->isUserPackageBlocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUserPackageBlocked failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public makePrivilegedCall(Ljava/lang/String;)I
    .locals 6

    :try_start_0
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "EmergencyManager"

    const-string/jumbo v4, "req call, success."

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "EmergencyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "req call, unknown Err : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x9

    return v3
.end method

.method public needMobileDataBlock()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    return v4

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->needMobileDataBlock()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needMobileDataBlock failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public readyEmergencyMode()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyManager"

    const-string/jumbo v1, "This is emergency mode."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v7, v8, v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->registerReceiver()V

    return-void

    :cond_0
    const-string/jumbo v0, "EmergencyManager"

    const-string/jumbo v1, "This is normal mode."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_UPDATE_TABLE:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-direct {p0, v0, v7, v8, v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->startService(Ljava/lang/String;ZIZ)V

    goto :goto_0
.end method

.method public setLocationProviderEnabled(Z)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setLocationProviderEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLocationProviderEnabled failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserPackageBlocked(ZLandroid/content/Context;)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_EM:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_UPSM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mSupport_BCM:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->ensureServiceConnected()V

    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyManager;->mService:Lcom/samsung/android/emergencymode/IEmergencyManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/emergencymode/IEmergencyManager;->setUserPackageBlocked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUserPackageBlocked failed e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
