.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;
.super Ljava/lang/Object;


# static fields
.field private static sEnableRoundAvatar:Z

.field public static sEnableSettingPermissionCheck:Z

.field public static sFirstSmallChunkEnabled:Z

.field public static sMultipleDownloadEnabled:Z

.field private static sSupportAllDevices:Z

.field public static sTdkLogEnabled:Z

.field public static sUseDebugMode:Z

.field public static sUseMyOrs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sUseDebugMode:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sTdkLogEnabled:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sMultipleDownloadEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sFirstSmallChunkEnabled:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableSettingPermissionCheck:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sUseMyOrs:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableRoundAvatar:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sSupportAllDevices:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugMode()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "feature_debug_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sUseDebugMode:Z

    goto :goto_0
.end method

.method public static getEnableDownloadProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMultipleDownload()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "feature_multi_download"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sMultipleDownloadEnabled:Z

    goto :goto_0
.end method

.method public static getEnableRestartMessageShare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSettingPermissionCheck()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "feature_setting_permission_check"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableSettingPermissionCheck:Z

    goto :goto_0
.end method

.method public static getEnabledAutoEndMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnabledFirstSmallChunk()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "feature_first_chunk_enabled"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sFirstSmallChunkEnabled:Z

    goto :goto_0
.end method

.method public static getEnabledMultiStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnabledPollNoti()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnabledRoundAvatar()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sEnableRoundAvatar:Z

    return v0
.end method

.method public static getEnabledSingleThreadDownload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnabledTdkNanoId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getTdkLogEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getWaitingForWifiEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportToAllDevices()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sSupportAllDevices:Z

    return v0
.end method

.method public static setSupportToAllDevices(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->sSupportAllDevices:Z

    return-void
.end method

.method public static uploadSmallChunk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
