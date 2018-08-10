.class public Landroid/hardware/display/SecWifiDisplayUtil;
.super Ljava/lang/Object;
.source "SecWifiDisplayUtil.java"


# static fields
.field private static final synthetic -android-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues:[I = null

.field private static final GP_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.groupcast"

.field private static final GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String; = ".gp_running_check"

.field private static final TAG:Ljava/lang/String; = "SecWifiDisplayUtil"

.field private static mScanInProgress:Z


# direct methods
.method private static synthetic -getandroid-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/hardware/display/SecWifiDisplayUtil;->-android-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/display/SecWifiDisplayUtil;->-android-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->values()[Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->PAUSE:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/hardware/display/SecWifiDisplayUtil;->-android-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExceptionalCase(Landroid/content/Context;)I
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isGroupPlayRunning(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    :goto_0
    const-string/jumbo v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkExceptionalCase ret value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHotspotOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isP2pConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHDMIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncAppRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/hardware/display/SecWifiDisplayUtil;->getCPUPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_8

    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_8

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :cond_8
    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_7

    invoke-static {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWifiIbssEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v1, 0x8

    goto :goto_0

    :cond_9
    invoke-static {}, Landroid/hardware/display/SecWifiDisplayUtil;->isLiveBroadcastRunning()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SecWifiDisplayUtil"

    const-string/jumbo v3, "exception occured while using isScreenMirroringAvailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method private static getCPUPowerSavingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getPowerSavingMode(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SecWifiDisplayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lowPowerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isAuSLServiceRunning(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "com.sec.kddi.ausharelink.service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SecWifiDisplayUtil"

    const-string/jumbo v5, "isAuSLServiceRunning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public static isGroupPlayRunning(Landroid/content/Context;)Z
    .locals 12

    const/4 v11, 0x0

    const-string/jumbo v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v9, 0x7fffffff

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.groupcast"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_0
    const-string/jumbo v9, "com.samsung.groupcast"

    const/4 v10, 0x2

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v9, ".gp_running_check"

    invoke-virtual {v3, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    const/4 v9, 0x1

    return v9

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v11

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v11

    :cond_1
    return v11
.end method

.method private static isHDMIConnected(Landroid/content/Context;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v4, "display"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "SecWifiDisplayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHDMIConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static isHotspotOn(Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const-string/jumbo v2, "SecWifiDisplayUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHotSpotOn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isLiveBroadcastRunning()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "service.camera.recording.plb"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isP2pConnected(Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "SecWifiDisplayUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isP2pConntected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSideSyncAppRunning(Landroid/content/Context;)Z
    .locals 8

    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "com.sec.android.sidesync30.ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SecWifiDisplayUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSideSyncAppRunning className = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private static isSideSyncConnected(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_source_connect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "SecWifiDisplayUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSideSyncConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method private static isWfdConnected(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isWfdScanning(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isWfdStatusOn(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isWifiIbssEnabled(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method private static scanWifiDisplays(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    return-void
.end method

.method public static setActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/display/SecWifiDisplayUtil;->-getandroid-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdScanning(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    sget-boolean v0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->stopScanWifiDisplays(Landroid/content/Context;)V

    :cond_2
    invoke-static {v2, p1}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(ZLandroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3, p1}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(ZLandroid/content/Context;)V

    sget-boolean v0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->scanWifiDisplays(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdStatusOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static stopPeriodicScanning(ZLandroid/content/Context;)V
    .locals 4

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_0
    return-void
.end method

.method private static stopScanWifiDisplays(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    return-void
.end method
