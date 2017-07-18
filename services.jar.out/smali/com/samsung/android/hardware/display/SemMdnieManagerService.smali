.class public Lcom/samsung/android/hardware/display/SemMdnieManagerService;
.super Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;
.source "SemMdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;,
        Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemMdnieManagerService"


# instance fields
.field private final DEBUG:Z

.field private final LCD_SRGB_MODE:I

.field private final MDNIE_SUPPORT_FUNCTION:I

.field private final NIGHT_MODE_MAX_INDEX:I

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

.field private final SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

.field private final SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

.field private final SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

.field private final SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

.field private final SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

.field private final SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

.field private final SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

.field private adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private mContentMode:I

.field private final mContext:Landroid/content/Context;

.field private mCurtainModeIsRunning:Z

.field private mDisplayOn:Z

.field private mEbookScenarioEnabled:Z

.field private mFactoryScrBIndex:I

.field private mFactoryScrGIndex:I

.field private mFactoryScrRIndex:I

.field private final mLock:Ljava/lang/Object;

.field private mMdnieCustomized:Z

.field private mMdnieFactorySupported:Z

.field private mMdnieWhiteRGBSupported:Z

.field private mMdnieWorkingCondition:Z

.field private mNegativeColorEnabled:Z

.field private mNightMode:Z

.field private mNightModeIndex:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevScreenModeForReadingMode:I

.field private mReadingModeEnabled:Z

.field private mReadingScreenMode:I

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenModeForReadingMode:I

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

.field private mSupportBlueFilter:Z

.field private mSupportColorAdjustment:Z

.field private mSupportContentMode:Z

.field private mSupportContentModeGame:Z

.field private mSupportContentModeVideoEnhance:Z

.field private mSupportGrayscale:Z

.field private mSupportHDR:Z

.field private mSupportHMT:Z

.field private mSupportNegative:Z

.field private mSupportScreeenReadingMode:Z

.field private mSupportScreenCurtain:Z

.field private mSupportScreenMode:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/ISemMdnieManager$Stub;-><init>()V

    const-string/jumbo v2, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->DEBUG:Z

    iput-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "sec_display_temperature_red"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_R:Ljava/lang/String;

    const-string/jumbo v2, "sec_display_temperature_green"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_G:Ljava/lang/String;

    const-string/jumbo v2, "sec_display_temperature_blue"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SEC_DISPLAY_TEMPERATURE_B:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie_1/mdnie_1/accessibility"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_VISION_MODE_SUB:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/mode"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_SCREEN_MODE:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_CONTENT_MODE:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/negative"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NEGATIVE:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/outdoor"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_OUTDOOR:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/playspeed"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_PLAYSPEED:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/night_mode"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_NIGHT_MODE:Ljava/lang/String;

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/whiteRGB"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_WHITE_RGB:Ljava/lang/String;

    const-string/jumbo v2, "/efs/FactoryApp/mdnie"

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->SYSFS_MDNIE_FACTORY_MDNIE:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->LCD_SRGB_MODE:I

    const/16 v2, 0xb

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->NIGHT_MODE_MAX_INDEX:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    const-string/jumbo v2, "32535"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieCustomized:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenCurtainEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNegativeColorEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mColorBlindEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingModeEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mEbookScenarioEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mBrowserScenarioEnabled:Z

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iput-object v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportNegative:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportGrayscale:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_a

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenCurtain:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b

    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportColorAdjustment:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_c

    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_d

    move v2, v3

    :goto_a
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHMT:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_e

    move v2, v3

    :goto_b
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportHDR:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sec_display_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sec_display_temperature_green"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSettingsObserver:Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;)V

    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/efs/FactoryApp/mdnie"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieFactorySupported:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setFactoryWhiteRGB()V

    :goto_c
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_automatic_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_10

    move v2, v3

    :goto_d
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAutoModeEnabled:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    :goto_e
    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setScreenMode(I)Z

    iget v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setContentMode(I)Z

    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mUseAdaptiveDisplayColorServiceConfig:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {v2, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->adaptiveDisplay:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    goto/16 :goto_4

    :cond_8
    move v2, v4

    goto/16 :goto_5

    :cond_9
    move v2, v4

    goto/16 :goto_6

    :cond_a
    move v2, v4

    goto/16 :goto_7

    :cond_b
    move v2, v4

    goto/16 :goto_8

    :cond_c
    move v2, v4

    goto/16 :goto_9

    :cond_d
    move v2, v4

    goto/16 :goto_a

    :cond_e
    move v2, v4

    goto/16 :goto_b

    :cond_f
    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SYSFS_MDNIE_FACTORY_MDNIE is not exist mMdnieWhiteRGBSupported - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_10
    move v2, v4

    goto :goto_d

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    goto/16 :goto_e
.end method

.method private checkContentMode(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeGame:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentModeVideoEnhance:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private checkScreenMode(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFactoryWhiteRGB()V
    .locals 15

    const/16 v14, -0x13

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string/jumbo v11, "/efs/FactoryApp/mdnie"

    invoke-direct {v5, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setFactoryWhiteRGB : scrR - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrG - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scrB - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    move-object v4, v5

    :cond_3
    :goto_2
    if-gtz v9, :cond_4

    if-lt v9, v14, :cond_4

    if-gtz v8, :cond_4

    if-lt v8, v14, :cond_4

    if-gtz v6, :cond_4

    if-lt v6, v14, :cond_4

    iput v9, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    iput v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    iput v6, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    const-string/jumbo v11, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v11, v10}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_4
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    move-exception v2

    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_6
    :goto_6
    if-eqz v4, :cond_3

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_7
    move-exception v3

    const-string/jumbo v11, "SemMdnieManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BufferedReader Close IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v11

    :goto_7
    if-eqz v0, :cond_7

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_8
    :goto_9
    throw v11

    :catch_8
    move-exception v3

    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BufferedReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_9
    move-exception v3

    const-string/jumbo v12, "SemMdnieManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FileReader Close IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_1
    move-exception v11

    move-object v4, v5

    goto :goto_7

    :catchall_2
    move-exception v11

    move-object v0, v1

    move-object v4, v5

    goto :goto_7

    :catch_a
    move-exception v2

    move-object v4, v5

    goto/16 :goto_5

    :catch_b
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_5

    :catch_c
    move-exception v3

    move-object v4, v5

    goto/16 :goto_3

    :catch_d
    move-exception v3

    move-object v0, v1

    move-object v4, v5

    goto/16 :goto_3
.end method

.method private setting_is_changed()V
    .locals 9

    const/16 v8, -0x13

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_red"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_green"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_blue"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWhiteRGBSupported:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SemMdnieManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting_is_changed - R("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), G("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), B("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrRIndex:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrGIndex:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mFactoryScrBIndex:I

    add-int/2addr v0, v4

    if-gtz v2, :cond_1

    if-lt v2, v8, :cond_1

    if-gtz v1, :cond_1

    if-lt v1, v8, :cond_1

    if-gtz v0, :cond_1

    if-lt v0, v8, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/sys/class/mdnie/mdnie/whiteRGB"

    invoke-static {v4, v3}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPrevScreenModeForReadingMode:I

    iget v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mReadingScreenMode:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->setAutoBrightnessForEbookOnly(Z)V

    goto/16 :goto_0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v7

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v7

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    return v7

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method

.method private static sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return v9

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method

.method private static sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xb

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return v9

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method

.method private static sysfsWrite_color_blind(Ljava/lang/String;I[I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v8

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, p2, v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x7

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    return v9

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v8

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v8

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I

    return v0
.end method

.method public getScreenMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    return v0
.end method

.method public getSupportedContentMode()[I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "SemMdnieManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MDNIE_SUPPORT_FUNCTION ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->MDNIE_SUPPORT_FUNCTION:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mSupportContentMode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    :cond_0
    new-array v0, v1, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_1

    aput v5, v0, v5

    aput v6, v0, v6

    const/4 v2, 0x2

    aput v7, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x3

    aput v2, v0, v3

    const/16 v2, 0x8

    aput v2, v0, v7

    const/16 v2, 0x9

    const/4 v3, 0x5

    aput v2, v0, v3

    :cond_1
    return-object v0
.end method

.method public getSupportedScreenMode()[I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    :cond_0
    :goto_0
    new-array v0, v1, [I

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_1

    aput v3, v0, v3

    aput v4, v0, v4

    aput v5, v0, v5

    const/4 v2, 0x3

    aput v6, v0, v2

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    aput v2, v0, v6

    :cond_1
    return-object v0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public isContentModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAmoledACL(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return v1
.end method

.method public setContentMode(I)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportContentMode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkContentMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContentMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    :cond_1
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setNightMode(ZI)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportBlueFilter:Z

    if-eqz v4, :cond_2

    if-ltz p2, :cond_2

    const/16 v4, 0xb

    if-gt p2, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "/sys/class/mdnie/mdnie/night_mode"

    invoke-static {v4, v2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    iput p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    monitor-exit v5

    :cond_2
    return v6

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public setScreenMode(I)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mMdnieWorkingCondition:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_0
    monitor-exit v3

    :cond_1
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeAccessibilityMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeAccessibilityMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_3
    return v0
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeColorBlind"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeColorBlind ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    :cond_0
    invoke-static {v1, v0, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite_CB_HBM(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeEmergencyMode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeEmergencyMode ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setmDNIeNegative(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeNegative"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeNegative ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.CHANGE_DISPLAY_COLOR"

    const-string/jumbo v3, "setmDNIeScreenCurtain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "SemMdnieManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setmDNIeScreenCurtain ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mCurtainModeIsRunning:Z

    const-string/jumbo v2, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
