.class public Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;
.super Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.source "SemDisplaySolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$ScreenWatchingReceiver;,
        Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManagerService"


# instance fields
.field private final COLOR_BLIND_OFF:Ljava/lang/String;

.field private final COLOR_BLIND_ON:Ljava/lang/String;

.field private final DEBUG:Z

.field private final HDR_EFFECT_OFF:Ljava/lang/String;

.field private final HDR_EFFECT_ON_1:Ljava/lang/String;

.field private final HDR_EFFECT_ON_2:Ljava/lang/String;

.field private final LDU_OFF:Ljava/lang/String;

.field private final LDU_ON_1:Ljava/lang/String;

.field private final LDU_ON_2:Ljava/lang/String;

.field private final LDU_ON_3:Ljava/lang/String;

.field private final LDU_ON_4:Ljava/lang/String;

.field private final LDU_ON_5:Ljava/lang/String;

.field private final REAL_HDR_OFF:Ljava/lang/String;

.field private final REAL_HDR_ON:Ljava/lang/String;

.field private SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

.field private bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

.field private mAlphaBlendingValue:F

.field private mCalculatedAlphaBlendingValue:F

.field private mColorBlind:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentBrightnessValue:F

.field private mEmergencyModeEnabled:Z

.field private mHDREffect:Z

.field private mLDU:Z

.field private final mLock:Ljava/lang/Object;

.field private mMSCSEnable:Z

.field private mName:Ljava/lang/String;

.field private final mNumberDisplaySolutionScaleFactor:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingModeEnabled:Z

.field private mRealHDR:Z

.field private final mSCafeVersion:Ljava/lang/String;

.field private mScaleFactor:F

.field private mScaleFactorStringArray:[Ljava/lang/String;

.field private mScaleFactorValueArray:[F

.field private final mScreenBrightnessExtendedMaximumConfig:I

.field private mSettingValue:Ljava/lang/String;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

.field private mTempAB:D

.field private mTitle:Ljava/lang/String;

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseBigDataLoggingServiceConfig:Z

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

.field private settingsValueEM:F

.field private settingsValuePSM:F

.field private settingsValueString:Ljava/lang/String;

.field private settingsValueStringArray:[Ljava/lang/String;

.field private settingsValueUPSM:F

.field private temp_COLOR_BLIND_ON:Ljava/lang/String;

.field private temp_HDR_EFFECT_ON:Ljava/lang/String;

.field private temp_LDU_ON:Ljava/lang/String;

.field private temp_REAL_HDR_ON:Ljava/lang/String;

.field private temp_mName:Ljava/lang/String;

.field private temp_mTitle:Ljava/lang/String;

.field private temt_mScaleFactor:F


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0xd

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;-><init>()V

    const-string/jumbo v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->DEBUG:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iput v7, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    iput v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    iput v8, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    const-string/jumbo v3, "color_blind_on"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_ON:Ljava/lang/String;

    const-string/jumbo v3, "color_blind_off"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->COLOR_BLIND_OFF:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_on"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_ON:Ljava/lang/String;

    const-string/jumbo v3, "real_hdr_off"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->REAL_HDR_OFF:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_1"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_1:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_2"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_2:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_3"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_3:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_4"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_4:Ljava/lang/String;

    const-string/jumbo v3, "ldu_on_5"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_ON_5:Ljava/lang/String;

    const-string/jumbo v3, "ldu_off"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->LDU_OFF:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_1"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_1:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_on_2"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_ON_2:Ljava/lang/String;

    const-string/jumbo v3, "hdr_effect_off"

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->HDR_EFFECT_OFF:Ljava/lang/String;

    const-string/jumbo v3, "ro.build.scafe.version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    iput v9, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mNumberDisplaySolutionScaleFactor:I

    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {v3, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mscsService:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseBigDataLoggingServiceConfig:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/displaysolution/BigDataLoggingService;

    invoke-direct {v3, p1}, Lcom/samsung/android/displaysolution/BigDataLoggingService;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->bdlsService:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    :cond_1
    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    :cond_2
    const-string/jumbo v3, "SemDisplaySolutionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUseMdnieScenarioControlServiceConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SemDisplaySolutionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUseBigDataLoggingServiceConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUseMdnieScenarioControlServiceConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SemDisplaySolutionManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mScreenBrightnessExtendedMaximumConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScreenBrightnessExtendedMaximumConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v9, [F

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorStringArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "low_power"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingsObserver:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$ScreenWatchingReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    return-void
.end method

.method private calculateAlphaBlendingValue(F)F
    .locals 6

    const/high16 v0, 0x43000000    # 128.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3ffab367a0f9096cL    # 1.6688

    mul-double/2addr v0, v2

    const-wide v2, 0x404d2c8b43958106L    # 58.348

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    const-wide v2, 0x3ec92a7380000000L    # 3.000000106112566E-6

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    const-wide v4, 0x3f689374bc6a7efaL    # 0.003

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide v2, 0x3febe28240b78034L    # 0.8714

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCalculatedAlphaBlendingValue:F

    return v0

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fa212d77318fc50L    # 0.0353

    mul-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ffe793dd97f62b7L    # 1.9046

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTempAB:D

    goto :goto_0
.end method

.method private controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string/jumbo v2, "application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_3

    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v1, :cond_e

    :cond_a
    :goto_4
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    :cond_b
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_f
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    const-string/jumbo v2, "settings_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v1, :cond_15

    :cond_11
    :goto_5
    iget v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temt_mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v1, :cond_16

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_16
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->SEC_FEATURE_EXTENDED_BRIGHTNESS:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "where : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " setScreenBrightnessScaleFactor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactor:F

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    goto/16 :goto_2
.end method

.method private setting_is_changed()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    const-string/jumbo v2, "emergency_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    const-string/jumbo v2, "limit_brightness_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "100, 100"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueString:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "2016B"

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "2017A"

    iget-object v5, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    aput-object v5, v2, v4

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    aput-object v5, v2, v3

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x50

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    :cond_3
    :goto_4
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "PSM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_1

    :cond_7
    move v2, v4

    goto/16 :goto_2

    :cond_8
    :try_start_1
    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSCafeVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    const-string/jumbo v5, "100"

    const/4 v6, 0x1

    aput-object v5, v2, v6
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemDisplaySolutionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to read mSCafeVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x55

    if-ne v2, v5, :cond_a

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto/16 :goto_4

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v9

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto/16 :goto_4

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v10

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValuePSM:F

    goto/16 :goto_4

    :cond_d
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x50

    if-ne v2, v5, :cond_f

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    :cond_e
    :goto_6
    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "UPSM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x55

    if-ne v2, v4, :cond_10

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_6

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_11

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_6

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x5f

    if-ne v2, v4, :cond_12

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v9

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_6

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueStringArray:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v10

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueUPSM:F

    goto :goto_6

    :cond_13
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    aget v2, v2, v4

    iput v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    iget v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->settingsValueEM:F

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "EM"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerSavingModeEnabled:Z

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mUltraPowerSavingModeEnabled:Z

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mEmergencyModeEnabled:Z

    if-eqz v2, :cond_4

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v3, 0xc

    aget v2, v2, v3

    const-string/jumbo v3, "settings"

    const-string/jumbo v4, "DEFAULT"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public getAlphaBlendingValue()F
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mCurrentBrightnessValue:F

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->calculateAlphaBlendingValue(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAlphaBlendingValue:F

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getGalleryModeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z

    return v0
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z

    return v0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVGalleryEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mMSCSEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "color_blind_on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "color_blind_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "color_blind_on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_COLOR_BLIND_ON:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xb

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "ColorBlind"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v3

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "color_blind_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mColorBlind:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "real_hdr_on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "real_hdr_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "real_hdr_on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_REAL_HDR_ON:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "real_hdr_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "ldu_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_on_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_on_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_off"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSettingValue:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    goto/16 :goto_0

    :cond_d
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mRealHDR:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xb

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "RealHDR"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLDU:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v4, 0x5

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "LDU_1"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v4, 0x6

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "LDU_2"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0x8

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "LDU_3"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xa

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "LDU_4"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_LDU_ON:Ljava/lang/String;

    const-string/jumbo v4, "ldu_on_5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xb

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "LDU_5"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHDREffect:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_on_1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xb

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "HDREffect_1"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->temp_HDR_EFFECT_ON:Ljava/lang/String;

    const-string/jumbo v4, "hdr_effect_on_2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xb

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "HDREffect_2"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v4, 0xc

    aget v2, v2, v4

    const-string/jumbo v4, "application"

    const-string/jumbo v5, "DEFAULT"

    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "2016B"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2017A"

    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mSCafeVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SemDisplaySolutionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScreenBrightnessForPreview : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x4

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x3

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x55

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x50

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "SETTINGVALUE"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mScaleFactorValueArray:[F

    const/16 v2, 0xc

    aget v0, v0, v2

    const-string/jumbo v2, "settings_preview"

    const-string/jumbo v3, "DEFAULT"

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->controlScaleFactorValue(FLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mVideoEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
