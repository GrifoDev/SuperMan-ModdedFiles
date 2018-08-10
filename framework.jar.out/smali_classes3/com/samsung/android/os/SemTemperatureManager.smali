.class public Lcom/samsung/android/os/SemTemperatureManager;
.super Ljava/lang/Object;
.source "SemTemperatureManager.java"


# static fields
.field public static final HMT_LEVEL_DANGEROUS:I = 0x2

.field public static final HMT_LEVEL_NORMAL:I = 0x0

.field public static final HMT_LEVEL_WARNING:I = 0x1

.field private static final SSRM_VALUE_HMT_LEVEL:I = 0x2

.field private static final SSRM_VALUE_PST:I = 0x0

.field private static final SSRM_VALUE_SIOP_LEVEL:I = 0x1

.field public static final UNSUPPORTED:I = -0x3e7

.field private static mService:Landroid/os/ICustomFrequencyManager;


# instance fields
.field LOG_TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/os/SemTemperatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemTemperatureManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static getHeadMountTheaterLevel(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/os/SemTemperatureManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->getSsrmStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v2, -0x3e7

    return v2
.end method

.method public static getOverheatingProtectionLevel(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/os/SemTemperatureManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->getSsrmStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v2, -0x3e7

    return v2
.end method

.method public static getPredictedSurfaceTemperature(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/os/SemTemperatureManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/ICustomFrequencyManager;->getSsrmStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 v2, -0x3e7

    return v2
.end method

.method private static declared-synchronized getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .locals 3

    const-class v2, Lcom/samsung/android/os/SemTemperatureManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/os/SemTemperatureManager;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
