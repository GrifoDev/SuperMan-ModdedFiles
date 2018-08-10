.class public Lcom/samsung/android/hardware/SemBatteryUtils;
.super Ljava/lang/Object;
.source "SemBatteryUtils.java"


# static fields
.field public static final MODE_BIG_DATA_LOGGING:I = 0x4

.field public static final MODE_BIG_DATA_UPLOADING:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_POWER_SAVING:I = 0x1

.field public static final MODE_POWER_SAVING_IN_DARK_THEME:I = 0x11

.field public static final MODE_POWER_SAVING_IN_GRAYSCALE:I = 0x10

.field public static final MODE_POWER_SAVING_WITH_BLOCKING_DATA:I = 0x6

.field public static final MODE_POWER_SAVING_WITH_LIMITING_APPLICATIONS:I = 0x12

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_100:I = 0xb

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_80:I = 0x7

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_85:I = 0x8

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_90:I = 0x9

.field public static final MODE_POWER_SAVING_WITH_MAX_BRIGHTNESS_95:I = 0xa

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_FHD:I = 0xd

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_HD:I = 0xc

.field public static final MODE_POWER_SAVING_WITH_RESOLUTIION_WQHD:I = 0xe

.field public static final MODE_POWER_SAVING_WITH_RESTRICTING_BG_DATA:I = 0x3

.field public static final MODE_POWER_SAVING_WITH_RESTRICTING_PERFORMANCE:I = 0xf

.field public static final MODE_ULTRA_POWER_SAVING:I = 0x2

.field private static mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemainingUsageTime(Landroid/content/Context;I)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFrequentlyUsedAppListByLocation(Landroid/content/Context;DDI)[Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeastRecentlyUsedAppList(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .locals 3

    const-class v2, Lcom/samsung/android/hardware/SemBatteryUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStandbyTimeInUltraPowerSavingMode(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
