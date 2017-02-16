.class public Landroid/hardware/display/SecWifiDisplayUtil;
.super Ljava/lang/Object;
.source "SecWifiDisplayUtil.java"


# static fields
.field private static final synthetic -android-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues:[I


# instance fields
.field private final GP_PACKAGE_NAME:Ljava/lang/String;

.field private final GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mScanInProgress:Z


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

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->RESUME:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->SETUP:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, "SecWifiDisplayUtil"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->TAG:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "com.samsung.groupcast"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_PACKAGE_NAME:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ".gp_running_check"

    iput-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->GP_RUNNING_STATE_CHECK_FILE:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method private getPowerSavingMode()I
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "lowPowerMode":I
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

    .line 93
    return v0
.end method

.method private isHDMIConnected()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 160
    .local v3, "isHDMIConnected":Z
    iget-object v4, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 161
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 163
    .local v0, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 164
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 165
    const/4 v3, 0x1

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
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

    .line 169
    return v3
.end method

.method private isHotspotOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "isHotspotOn":Z
    iget-object v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 189
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 197
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

    .line 198
    return v0

    .line 193
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isLiveBroadcastRunning()Z
    .locals 3

    .prologue
    .line 82
    const-string/jumbo v1, "SecWifiDisplayUtil"

    const-string/jumbo v2, "checkExceptionalCase isLiveBroadcastRunning"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Z
    const-string/jumbo v1, "service.camera.recording.plb"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_0
    return v0
.end method

.method private isP2pConnected()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, "isP2pConntected":Z
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 205
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 206
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 211
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

    .line 212
    return v1

    .line 209
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSideSyncAppRunning()Z
    .locals 8

    .prologue
    .line 131
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    .line 132
    const-string/jumbo v6, "activity"

    .line 131
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 134
    .local v1, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v5, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 136
    .local v4, "pack":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "className":Ljava/lang/String;
    const-string/jumbo v5, "com.sec.android.sidesync30.ui"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
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

    .line 140
    const/4 v5, 0x1

    return v5

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method private isSideSyncConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "isSideSync":I
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_source_connect"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    return v3

    .line 152
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

    .line 153
    const/4 v1, 0x1

    return v1
.end method

.method private isWfdConnected()Z
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 253
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 254
    const/4 v1, 0x1

    return v1

    .line 256
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isWfdScanning()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 261
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 262
    return v3

    .line 264
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isWfdStatusOn()Z
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 279
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 280
    const/4 v1, 0x1

    return v1

    .line 282
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isWifiIbssEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method private scanWifiDisplays()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 269
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStartScanWifiDisplays()V

    .line 267
    return-void
.end method

.method private stopPeriodicScanning(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 286
    iget-object v3, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 287
    .local v2, "tWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 289
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 285
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private stopScanWifiDisplays()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 274
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semStopScanWifiDisplays()V

    .line 272
    return-void
.end method


# virtual methods
.method public checkExceptionalCase()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isGroupPlayRunning()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v1, 0x7

    .line 77
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

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 54
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHotspotOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    const/16 v1, 0xa

    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    const/4 v1, 0x2

    goto :goto_0

    .line 60
    :cond_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isHDMIConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    const/4 v1, 0x3

    goto :goto_0

    .line 62
    :cond_4
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncConnected()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isSideSyncAppRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 64
    :cond_6
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getCPUPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_8

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 65
    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    .line 64
    :cond_8
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->getPowerSavingMode()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 66
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWifiIbssEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 67
    const/16 v1, 0x8

    goto :goto_0

    .line 68
    :cond_9
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isLiveBroadcastRunning()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    const/16 v1, 0x9

    goto :goto_0

    .line 71
    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SecWifiDisplayUtil"

    const-string/jumbo v3, "exception occured while using isScreenMirroringAvailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    const/4 v2, 0x0

    return v2
.end method

.method public isGroupPlayRunning()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 103
    iget-object v9, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 104
    .local v0, "am":Landroid/app/ActivityManager;
    const v9, 0x7fffffff

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 105
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 106
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 107
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    .local v7, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.groupcast"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 110
    :try_start_0
    iget-object v9, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.groupcast"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 111
    .local v3, "gpContext":Landroid/content/Context;
    const-string/jumbo v9, ".gp_running_check"

    invoke-virtual {v3, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 113
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 114
    :catch_0
    move-exception v4

    .line 115
    .local v4, "ie":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 117
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "gpContext":Landroid/content/Context;
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 118
    .local v6, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    return v12

    .line 120
    .end local v6    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "fe":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    return v12

    .line 127
    .end local v1    # "fe":Ljava/io/FileNotFoundException;
    .end local v7    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    return v12
.end method

.method public setActivityState(Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;)V
    .locals 4
    .param p1, "state"    # Landroid/hardware/display/DisplayManager$SemWifiDisplayAppState;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    invoke-static {}, Landroid/hardware/display/SecWifiDisplayUtil;->-getandroid-hardware-display-DisplayManager$SemWifiDisplayAppStateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "wifi_display_on"

    .line 223
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdScanning()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    .line 228
    iget-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->stopScanWifiDisplays()V

    .line 232
    :cond_2
    invoke-direct {p0, v2}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    goto :goto_0

    .line 235
    :pswitch_2
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0, v3}, Landroid/hardware/display/SecWifiDisplayUtil;->stopPeriodicScanning(Z)V

    .line 237
    iget-boolean v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    if-eqz v0, :cond_1

    .line 238
    iput-boolean v2, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mScanInProgress:Z

    .line 239
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->scanWifiDisplays()V

    goto :goto_0

    .line 244
    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/display/SecWifiDisplayUtil;->isWfdStatusOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Landroid/hardware/display/SecWifiDisplayUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "wifi_display_on"

    .line 245
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
