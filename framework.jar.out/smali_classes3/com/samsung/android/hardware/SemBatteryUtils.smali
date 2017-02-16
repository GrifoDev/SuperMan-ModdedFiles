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

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemainingUsageTime(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 150
    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    .line 151
    .local v2, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v1, 0x0

    .line 152
    .local v1, "remainTime":I
    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFrequentlyUsedAppListByLocation(Landroid/content/Context;DDI)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "numOfItems"    # I

    .prologue
    .line 194
    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    .line 195
    .local v1, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v7, 0x0

    .line 197
    .local v7, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 198
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 203
    .end local v7    # "result":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 200
    .restart local v7    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeastRecentlyUsedAppList(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numOfItems"    # I

    .prologue
    .line 215
    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    .line 216
    .local v2, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v1, 0x0

    .line 218
    .local v1, "result":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 221
    .restart local v1    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/samsung/android/hardware/SemBatteryUtils;

    monitor-enter v2

    .line 118
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/SemBatteryUtils;->mService:Landroid/os/ICustomFrequencyManager;

    .line 124
    .end local v0    # "b":Landroid/os/IBinder;
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
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/samsung/android/hardware/SemBatteryUtils;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    .line 170
    .local v1, "svc":Landroid/os/ICustomFrequencyManager;
    if-eqz v1, :cond_0

    .line 172
    :try_start_0
    invoke-interface {v1}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
