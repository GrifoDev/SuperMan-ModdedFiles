.class Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/MultiResolutionManager$1;,
        Lcom/android/server/desktopmode/MultiResolutionManager$2;,
        Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    }
.end annotation


# static fields
.field private static final FHD:I = 0x1

.field private static final HD:I = 0x0

.field private static final INVALID:I = -0x1

.field private static final RESOLUTION_TABLE:[[I

.field private static final TAG:Ljava/lang/String;

.field private static final WQHD:I = 0x2


# instance fields
.field private final mAutoResolutionSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentResolution:I

.field private mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

.field private mIsAutoSelectEnabled:Z

.field private mIsForcedCustomResolution:Z

.field private final mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private mResolutionMaxSupport:I

.field private mResolutionUserSetting:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;


# direct methods
.method static synthetic -get0()[[I
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/16 v1, 0x640

    const/16 v2, 0x384

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x780

    const/16 v2, 0x438

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xa00

    const/16 v2, 0x5a0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    iput v6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    iput v6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iput v6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    const-string/jumbo v5, "resolution_auto_select"

    invoke-direct {v4, p0, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAutoResolutionSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$2;

    const-string/jumbo v5, "resolution_user_setting"

    invoke-direct {v4, p0, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$2;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    sget-object v4, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_SAMSUNG_WINDOW_MANAGER_SERVICE:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v4}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/IWindowManagerServiceBridge;

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    iget-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAutoResolutionSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    iget-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mManualResolutionModeSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x10e0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x10e0006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(III)V

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(III)V

    iput-object v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method

.method private static convertToInt(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "WQHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string/jumbo v0, "FHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "HD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static convertToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error, empty string"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "WQHD"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "FHD"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "HD"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPreferredResolution(Landroid/view/Display;)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    aget-object v3, v3, v6

    aget v3, v3, v5

    if-lt v2, v3, :cond_1

    iget v2, v0, Landroid/graphics/Point;->y:I

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    aget-object v3, v3, v6

    aget v3, v3, v4

    if-lt v2, v3, :cond_1

    const/4 v1, 0x2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    aget-object v3, v3, v4

    aget v3, v3, v5

    if-lt v2, v3, :cond_2

    iget v2, v0, Landroid/graphics/Point;->y:I

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:[[I

    aget-object v3, v3, v4

    aget v3, v3, v4

    if-lt v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static printUsage(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "USAGE: resolution"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "       resolution width height density"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private restorePreviousSizeDensity(I)V
    .locals 14

    const/16 v10, 0x2c

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v8, v11}, Lcom/android/server/wm/IWindowManagerServiceBridge;->getInitialDisplayProperties(I)[I

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "display_size_forced"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ne v8, v5, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v7, :cond_0

    if-lez v4, :cond_0

    const/4 v8, 0x0

    aput v7, v1, v8

    const/4 v8, 0x1

    aput v4, v1, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "display_density_forced"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x2

    aput v0, v1, v8
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Restoring display: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget v8, v1, v11

    aget v9, v1, v12

    aget v10, v1, v13

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    return-void

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Failed to parse previous forced display size"

    invoke-static {v8, v9, v3}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No previous forced display size. Use default size instead."

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No previous forced display density. Use default density instead."

    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDefaultResolution()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDefaultResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

.method private setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSamsungWindowManager:Lcom/android/server/wm/IWindowManagerServiceBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->setForcedDisplaySizeDensity(IIIIZZ)V

    return-void
.end method

.method private updateDisplayResolution()V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getConnectedDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateResolutionMaxSupportChanged(I)V

    iput v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(I)Z

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectedDisplayResolution()= width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateResolutionMaxSupportChanged(I)V

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    iput v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    :goto_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentResolution= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wrong display size. Use default size"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDefaultResolution()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    :goto_2
    iput v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    goto :goto_2
.end method

.method private updateResolutionMaxSupportChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateResolutionMaxSupportChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_max"

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->convertToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateState()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateState()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_auto_select"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_user_setting"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->convertToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_max"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->convertToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    return-void
.end method


# virtual methods
.method command(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    array-length v0, p2

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->printUsage(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_0
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(III)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    const-string/jumbo v0, "Succeed. This change will be reset when power is off."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Failure due to invalid value."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->printUsage(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v0, "mCurrentResolution"

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mCustomResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mIsAutoSelectEnabled"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mResolutionMaxSupport"

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mResolutionUserSetting"

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method getCustomDensity()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return v0
.end method

.method isAutoSelectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    return v0
.end method

.method isDisplayResolutionChanged(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isResolutionChangeNeeded()Z
    .locals 8

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getPreviousConnectedDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getConnectedDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(I)V

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isResolutionChangeNeeded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    iget v5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    iget-object v6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v6}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getConnectedDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v6

    if-le v5, v6, :cond_0

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "This display does not support current resolution."

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method onUserChanged(Z)V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserChanged(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateState()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->getConnectedDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateResolutionMaxSupportChanged(I)V

    :cond_1
    return-void
.end method

.method setAutoSelectEnabled(Z)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoSelectEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change to Max support resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionMaxSupport:I

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Wrong display size. Use default size"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDefaultResolution()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    :cond_4
    return-void
.end method

.method setForcedDisplayResolutionDensity(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateState()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDisplayResolution()V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedCustomResolution:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDefaultResolution()V

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/MultiResolutionManager;->restorePreviousSizeDensity(I)V

    goto :goto_0
.end method

.method setUserSetting(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->convertToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iput v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->set(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Wrong display size. Use default size"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDefaultResolution()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSamsungWindowManagerForcedDisplaySizeDensity(IIII)V

    :cond_4
    return-void
.end method

.method showToastResolutionChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsAutoSelectEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolutionUserSetting:I

    iget v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCurrentResolution:I

    if-le v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showToastResolutionChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    const v1, 0x10402a3

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method updateResolutionMaxSupportChanged(Landroid/view/Display;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->getPreferredResolution(Landroid/view/Display;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateResolutionMaxSupportChanged(I)V

    return-void
.end method
