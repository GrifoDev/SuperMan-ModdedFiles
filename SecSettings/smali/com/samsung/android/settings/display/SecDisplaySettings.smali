.class public Lcom/samsung/android/settings/display/SecDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDisplaySettings$10;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$11;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$12;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$13;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$14;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$15;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$16;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$17;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$18;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$19;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$1;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$20;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$21;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$2;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$3;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$4;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$5;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$6;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$7;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$8;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$9;,
        Lcom/samsung/android/settings/display/SecDisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static DISPLAY_ALWAYS_ON_DISPLAY:I

.field private static DISPLAY_AUTO_BRIGHTNESS:I

.field private static DISPLAY_BLUE_LIGHT_FILTER:I

.field private static DISPLAY_HOME_SCREEN:I

.field private static DISPLAY_KEEP_SCREEN_TURNED_OFF:I

.field private static DISPLAY_LED_INDICATOR:I

.field private static DISPLAY_NIGHT_CLOCK:I

.field private static DISPLAY_OUTDOOR_MODE:I

.field private static DISPLAY_SCREEN_SAVER:I

.field private static DISPLAY_SCREEN_TIMEOUT:I

.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static mDualFolderType:Z

.field static mSupportFolderType:Z

.field private static sAccessibilityVision:Ljava/lang/String;

.field private static sIsSupportNightClock:Z

.field private static sIsSupportOutdoor:Z

.field private static sPowerManager:Landroid/os/PowerManager;


# instance fields
.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

.field private final mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

.field private mDozePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mEdgeLighting:Landroid/support/v7/preference/SecPreference;

.field private mEdgeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

.field private mFontPreview:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mIsDeviceLockTime:Z

.field private mIsEmergencyMode:Z

.field private mIsKioskModeEnabled:I

.field private mIsSecuredLock:Z

.field private mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

.field private mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNeedToFinishOnStop:Z

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mNightClockAOD:Z

.field private final mNightClockObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/support/v7/preference/SecListPreference;

.field private mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

.field private mOutdoorObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotate:Landroid/support/v14/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mScreenModeObserver:Landroid/database/ContentObserver;

.field private mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

.field private mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private final mScreenResolutionObserver:Landroid/database/ContentObserver;

.field private mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

.field private mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

.field private mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

.field private mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private final mSmartStayObserver:Landroid/database/ContentObserver;

.field private mStatusBar:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

.field private mWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mWifiDisplayPreference:Landroid/support/v7/preference/SecPreference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private final timeout_string_resources:[I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeStatus()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/res/Resources;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAutoBrightness()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    sput-boolean v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$17;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$17;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$18;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings$18;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNeedToFinishOnStop:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$4;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$7;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$8;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$10;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$11;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$12;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$15;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings$16;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    const v0, 0x7f100010

    const v1, 0x7f10000c

    const v2, 0x7f10000d

    const v3, 0x7f10000e

    const v4, 0x7f10000f

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->timeout_string_resources:[I

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$19;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$20;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBixbyMsgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$21;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    return-void
.end method

.method private disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V
    .locals 24

    const-wide/16 v12, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string/jumbo v21, "device_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    :goto_0
    const-string/jumbo v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/32 v12, 0x927c0

    if-eqz v11, :cond_0

    const-string/jumbo v20, "j3y17qlte"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-wide/32 v12, 0x927c0

    :cond_0
    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0300f9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0300fa

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    aget-object v20, v19, v9

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v20, v16, v12

    if-gtz v20, :cond_1

    aget-object v20, v7, v9

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v20, v19, v9

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v20, v16

    if-gez v20, :cond_1

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_1

    move v10, v9

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0300f8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0300fb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_5

    invoke-virtual {v14, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-lez v20, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v4, v20

    if-eqz v20, :cond_6

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v20, v4, v16

    if-gez v20, :cond_7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x7f121016

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v20, "SecDisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "add adminTimeout: index : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "  adminTimeout  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "  timeout"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/TimeoutListPreference;->updateInitialEntry()V

    return-void

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x21c

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f12019e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCurrentResolution()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "display_size_forced"

    invoke-static {v14, v15}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v6, 0x0

    if-eqz v11, :cond_0

    const-string/jumbo v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_0

    const-string/jumbo v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v14, v10

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x1

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-eqz v12, :cond_1

    if-nez v6, :cond_2

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14, v3}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    :cond_2
    const/4 v2, 0x0

    const/16 v14, 0x5a0

    if-lt v12, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f121754

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v7, 0x1

    :goto_1
    int-to-float v14, v6

    int-to-float v15, v12

    div-float v9, v14, v15

    const v14, 0x3fe38e39

    cmpl-float v14, v9, v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-static {v14}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v7, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :catch_0
    move-exception v4

    const-string/jumbo v14, "SecDisplaySettings"

    const-string/jumbo v15, "getInitialDisplaySize() exception!!!"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, ""

    return-object v14

    :cond_4
    const/16 v14, 0x2d0

    if-le v12, v14, :cond_5

    const/16 v14, 0x438

    if-gt v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f12174e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v15, 0x7f121750

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private getDeXTimeoutNewEntry(J)Ljava/lang/String;
    .locals 23

    const-wide/16 v18, 0x3e8

    div-long v10, p1, v18

    const-wide/16 v18, 0x3c

    div-long v8, v10, v18

    const-wide/16 v18, 0x3c

    div-long v4, v8, v18

    const-wide/16 v18, 0x18

    div-long v2, v4, v18

    const-wide/16 v18, 0x7

    div-long v16, v2, v18

    const/4 v13, 0x5

    new-array v12, v13, [J

    const/4 v13, 0x0

    aput-wide v16, v12, v13

    const-wide/16 v18, 0x7

    rem-long v18, v2, v18

    const/4 v13, 0x1

    aput-wide v18, v12, v13

    const-wide/16 v18, 0x18

    rem-long v18, v4, v18

    const/4 v13, 0x2

    aput-wide v18, v12, v13

    const-wide/16 v18, 0x3c

    rem-long v18, v8, v18

    const/4 v13, 0x3

    aput-wide v18, v12, v13

    const-wide/16 v18, 0x3c

    rem-long v18, v10, v18

    const/4 v13, 0x4

    aput-wide v18, v12, v13

    const-string/jumbo v7, ""

    const/4 v6, 0x0

    :goto_0
    array-length v13, v12

    if-ge v6, v13, :cond_2

    aget-wide v14, v12, v6

    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-lez v13, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->timeout_string_resources:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    long-to-int v0, v14

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    long-to-int v0, v14

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v13, "SecDisplaySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getTimeoutNewEntry : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private getLedIndicator()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_charing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_missed_event"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "led_indicator_voice_recording"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private getNightclocksummary()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_mode_start_time"

    const/16 v5, 0x4ec

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_mode_end_time"

    const/16 v5, 0x1a4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 13

    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    const-wide/16 v8, 0x3c

    div-long v0, v2, v8

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-string/jumbo v4, ""

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    long-to-int v8, v0

    const v9, 0x7f100018

    invoke-virtual {v5, v9, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v2

    const v10, 0x7f100019

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    long-to-int v9, v6

    const v10, 0x7f10001a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string/jumbo v5, "SecDisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimeoutNewEntry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static isAODDisabledInPSM(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "psm_always_on_display_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isAccessibilityVisionEnabled()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "greyscale_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorLens(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_lens_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isDeXScreenTimeoutChangeAllowed()Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/DexPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isScreenTimeoutChangeAllowed"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string/jumbo v0, "isScreenTimeoutChangeAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    const-string/jumbo v0, "SecDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenTimeoutChangeAllowed  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_0
    move-exception v7

    const-string/jumbo v0, "SecDisplaySettings"

    const-string/jumbo v2, "SQLiteException MDM DeXPolicy"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    const-string/jumbo v0, "SecDisplaySettings"

    const-string/jumbo v2, "CursorIndexOutOfBoundsException in isScreenTimeoutChangeAllowed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    const-string/jumbo v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isDefaultLauncher()Z
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "SecDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SecDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :cond_1
    const-string/jumbo v4, "SecDisplaySettings"

    const-string/jumbo v5, "isDefaultLauncher : true"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private isInDefaultDeXTimeoutList([Ljava/lang/CharSequence;J)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method private isKnoxHomeScreenRunning()Z
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v3, "SecDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxHomeScreenRunning : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11200a3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup(II)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f120588

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v1, v5, v8

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f120927

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$28;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$28;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;II)V

    const v6, 0x7f1205fd

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/display/SecDisplaySettings$29;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$29;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$30;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings$30;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    if-ne p1, v9, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f120065

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v5, 0x7f120080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    const v3, 0x7f120dfc

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f120588

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$22;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$22;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v5, 0x7f1205fb

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$23;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$23;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/display/SecDisplaySettings$24;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$24;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V
    .locals 7

    const v6, 0x7f1200aa

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->dismissAllDialog()V

    const v2, 0x7f120dfc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120588

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$25;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$25;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const v4, 0x7f1205fb

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$26;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$26;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/display/SecDisplaySettings$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$27;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setDeXTimeoutEntry(J)V
    .locals 13

    const/4 v11, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f03006b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f03006c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultDeXTimeoutList([Ljava/lang/CharSequence;J)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_2

    aget-object v9, v0, v1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v8, v1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v8, v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v9, p1, v6

    if-gez v9, :cond_1

    if-ne v2, v11, :cond_0

    move v2, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_2
    if-eq v2, v11, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getDeXTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-direct {p0, v9, v10, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateDeXTimeoutPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateDeXTimeoutPreferenceDescription(J)V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, v0, v8, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateDeXTimeoutPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateDeXTimeoutPreferenceDescription(J)V

    goto :goto_2
.end method

.method private setLedIndicator(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_charing"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_low_battery"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "led_indicator_missed_event"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private setLinkedDataView()V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v11, :cond_b

    const/4 v3, 0x0

    new-instance v11, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$HDReffectSettinsActivity"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "flowId"

    const/16 v12, 0x232f

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getMetricsCategory()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iget-object v11, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v12, "videoEnhancer"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v12, 0x7f120cd1

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "sem_perfomance_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    if-eq v9, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x0

    :cond_2
    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const/4 v3, 0x1

    :cond_3
    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$LanguageAndInputSettingsActivity"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "flowId"

    const/16 v12, 0x2330

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getMetricsCategory()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v5, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v12, 0x7f120f54

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$AccessibilitySettingsVisionActivity"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "flowId"

    const/16 v12, 0x2331

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getMetricsCategory()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v6, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v12, 0x7f1200ab

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSeperateLockAndSecurity()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$LockscreenSettingsActivity"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v11, ":settings:fragment_args_key"

    const-string/jumbo v12, "always_on_screen"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "flowId"

    const/16 v12, 0x2332

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getMetricsCategory()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v7, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v12, 0x7f120175

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.app.aodservice"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v11, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    const/4 v0, 0x0

    :cond_6
    sget-object v11, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "high_contrast"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v8, 0x1

    :goto_1
    if-eqz v0, :cond_f

    if-eqz v1, :cond_7

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_7
    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v11}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v12, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLinkedData4:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-lez v3, :cond_b

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v11, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo v11, "com.android.settings"

    const-string/jumbo v12, "com.android.settings.Settings$LockscreenMenuActivity"

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x0

    goto :goto_1

    :cond_e
    if-nez v8, :cond_8

    :cond_f
    if-eqz v0, :cond_9

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "aod_content_type"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const v4, 0x7f12019c

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    const v4, 0x7f12019b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const v4, 0x7f12019d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    const v5, 0x7f120174

    invoke-virtual {v4, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "aod_mode"

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f121b3e

    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_4

    :cond_8
    const v4, 0x7f121b3d

    goto :goto_5
.end method

.method private updateAutoBrightness()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    const v3, 0x7f1203cf

    invoke-virtual {v2, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    const v3, 0x7f120260

    invoke-virtual {v2, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateBackKeyLightSummary()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "key_backlight_timeout"

    const/16 v7, 0xbb8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v5, v4, v8

    if-eqz v5, :cond_0

    aget-object v3, v4, v8

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v3, v4, v2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateBlueLightFilterStatus()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "greyscale_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f12081e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "high_contrast"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f12124d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "color_blind"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1205f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isSupportedColorLens(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "color_lens_switch"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1205f2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/settings/display/SecDisplaySettings;->sAccessibilityVision:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f1203d0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f1203c3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateBlueLightFilterSummary()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_type"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1203d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1203c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1203ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1203cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDeXTimeoutPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateDeXTimeoutPreferenceDescription(J)V
    .locals 11

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v1, v0

    aput-object v9, v8, v10

    const v9, 0x7f12175c

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateEasyModeSummary()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f121a1c

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const v2, 0x7f121a1b

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateIconBackgroundsState()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_appicon_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SecDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIconBackgroundsState isDefaultLauncher : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isDefaultEasyLauncher() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentTheme : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", currentIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultEasyLauncher()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tap_to_icon"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_6

    const v3, 0x7f120d3b

    :goto_2
    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const v3, 0x7f120d9d

    goto :goto_2
.end method

.method private updateOutdoorModeSummary()V
    .locals 2

    const v1, 0x7f1213e2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateScreenModeStatus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateScreenModeSummary()V
    .locals 8

    const v7, 0x7f121729

    const v6, 0x7f12171f

    const v5, 0x7f121723

    const v4, 0x7f121721

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f12172a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121727

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121728

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 6

    const v5, 0x7f12178d

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SecDisplaySettings"

    const-string/jumbo v4, "updateScreenSaverSummary : dreamName is empty"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12178c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121794

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private updateState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateOutdoorModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBackKeyLightSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAlwaysOnScreenSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateEasyModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateIconBackgroundsState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenModeSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAutoBrightness()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wake_gesture_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "doze_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "sub_lcd_auto_lock"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "key_night_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "double_tap_to_wake"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "camera_gesture_disabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_c

    :goto_6
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    return-void

    :cond_6
    move v1, v3

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move v1, v3

    goto :goto_5

    :cond_c
    move v2, v3

    goto :goto_6
.end method

.method private updateStateForDesktopMenuItem()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "display_outdoor_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isKnoxHomeScreenRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "screen_timeout_for_dex"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c
    return-void

    :cond_d
    move v0, v2

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto/16 :goto_2

    :cond_10
    move v0, v2

    goto :goto_3
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 15

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f120864

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    if-eqz v10, :cond_7

    cmp-long v10, p1, v2

    if-lez v10, :cond_7

    const v10, 0x7f1207f8

    invoke-virtual {v5, v10}, Lcom/android/settings/TimeoutListPreference;->setSummary(I)V

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    const-string/jumbo v6, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_3

    array-length v10, v1

    if-nez v10, :cond_4

    :cond_3
    const-string/jumbo v6, ""

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    array-length v10, v7

    if-ge v4, v10, :cond_6

    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v10, p1, v8

    if-ltz v10, :cond_5

    move v0, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f12175c

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v6}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateTouchKeyLightSummary()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "button_key_light"

    const/16 v4, 0x1770

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120cf1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "maxBrightnessDialogShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showMaxBrightnessDialog()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 29

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const v25, 0x7f1500d3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "power"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PowerManager;

    sput-object v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_13

    const/4 v14, 0x1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_14

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "color_blind"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_15

    const/4 v12, 0x1

    :goto_2
    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsEmergencyMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    const v25, 0x7f12051d

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_3
    const-string/jumbo v25, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    invoke-static {v15}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNotSupportScreenMode(Z)Z

    move-result v25

    if-eqz v25, :cond_17

    const-string/jumbo v25, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v25, "SecDisplaySettings"

    const-string/jumbo v26, "remove Screen mode"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    const-string/jumbo v25, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v26

    const-string/jumbo v27, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    new-instance v23, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    const-string/jumbo v25, "status_bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-nez v25, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mStatusBar:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    const-string/jumbo v25, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x112004d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_3

    if-eqz v14, :cond_1a

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_5
    const-string/jumbo v25, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v25

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_1c

    :cond_5
    const-string/jumbo v25, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    :goto_6
    const-string/jumbo v25, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_7

    const-string/jumbo v25, "screen_brightness_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    :cond_7
    const-string/jumbo v25, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    const-string/jumbo v25, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0300f9

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/TimeoutListPreference;->setEntries(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0300fa

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/TimeoutListPreference;->setEntryValues(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1d

    const-string/jumbo v25, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_7
    const-string/jumbo v25, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v25, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1120096

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-nez v25, :cond_a

    const-string/jumbo v25, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1e

    const-string/jumbo v25, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    :goto_8
    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_b

    :cond_a
    const-string/jumbo v25, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_1f

    const-string/jumbo v25, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_20

    const-string/jumbo v25, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_21

    const-string/jumbo v25, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_b
    const-string/jumbo v25, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-nez v25, :cond_22

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_22

    const-string/jumbo v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "display"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const-string/jumbo v25, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWifiDisplayPreference:Landroid/support/v7/preference/SecPreference;

    const/4 v6, 0x1

    :try_start_0
    const-string/jumbo v25, "window"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    xor-int/lit8 v6, v25, 0x1

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string/jumbo v26, "com.sec.feature.folder_type"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string/jumbo v26, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    :goto_e
    sput-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string/jumbo v26, "com.sec.feature.folder_type"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    const-string/jumbo v25, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-nez v25, :cond_d

    if-nez v14, :cond_d

    if-eqz v15, :cond_e

    :cond_d
    const-string/jumbo v25, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v25, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    const-string/jumbo v25, "sub_lcd_auto_lock"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_24

    const/16 v25, 0x1

    :goto_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v25, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v25, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    const-string/jumbo v25, "key_night_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_25

    const/16 v25, 0x1

    :goto_10
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    sget-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-eqz v25, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const/16 v27, 0x7

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const v27, 0x7f120e8b

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string/jumbo v26, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v27, "isKioskModeEnabled"

    invoke-static/range {v25 .. v27}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsKioskModeEnabled:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    const-string/jumbo v25, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v25, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_f
    const-string/jumbo v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    :cond_10
    :goto_12
    const-string/jumbo v25, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_11
    const-string/jumbo v25, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_29

    const/16 v25, 0x1

    :goto_13
    sput-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    sget-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportOutdoor:Z

    if-nez v25, :cond_2a

    const-string/jumbo v25, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_12
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "UPSM"

    const v27, 0x7f1500d3

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_2b

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_15
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_15

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_16
    const v25, 0x7f120887

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0d0273

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setWidgetLayoutResource(I)V

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_1a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenSaverPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v25, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const/16 v25, 0x1

    goto/16 :goto_8

    :cond_1f
    const-string/jumbo v25, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_20
    const-string/jumbo v25, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_21
    const-string/jumbo v25, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_22
    const-string/jumbo v25, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_0
    move-exception v10

    const-string/jumbo v25, "SecDisplaySettings"

    const-string/jumbo v26, "Failing checking whether status bar can hide"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_e

    :cond_24
    const/16 v25, 0x0

    goto/16 :goto_f

    :cond_25
    const/16 v25, 0x0

    goto/16 :goto_10

    :cond_26
    sget-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDualFolderType:Z

    if-nez v25, :cond_27

    sget-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSupportFolderType:Z

    if-eqz v25, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_11

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoLockmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mKeyBacklightmode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_11

    :cond_28
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_11

    goto/16 :goto_12

    :cond_29
    const/16 v25, 0x0

    goto/16 :goto_13

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_14

    :cond_2b
    const-string/jumbo v25, "night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2c

    const-string/jumbo v25, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/UiModeManager;

    invoke-virtual/range {v22 .. v22}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v25, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2c
    const-string/jumbo v25, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2d

    if-eqz v21, :cond_42

    const-string/jumbo v25, "panel"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    :goto_16
    if-nez v25, :cond_43

    const-string/jumbo v25, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2d
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2e

    const-string/jumbo v25, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2e
    const-string/jumbo v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2f
    :goto_18
    const-string/jumbo v25, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_31

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_45

    :cond_31
    :goto_19
    const-string/jumbo v25, "easy_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_32
    const-string/jumbo v25, "icon_backgrounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIconBackgrounds:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_33
    const-string/jumbo v25, "screen_off_pocket"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportPocketMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_34
    :goto_1a
    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string/jumbo v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_48

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_48

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_35
    :goto_1b
    const-string/jumbo v25, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_37

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_36

    if-nez v15, :cond_36

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v25

    if-eqz v25, :cond_49

    sget-boolean v25, Lcom/samsung/android/settings/display/SecDisplaySettings;->sIsSupportNightClock:Z

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_49

    :cond_36
    const-string/jumbo v25, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_37
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "blue_light_filter"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_4b

    const/4 v11, 0x1

    :goto_1d
    const-string/jumbo v25, "blue_light_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_39

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_3a

    :cond_39
    const-string/jumbo v25, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_3a
    const-string/jumbo v25, "screen_resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const-string/jumbo v25, "WQHD,FHD,HD"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3b
    const-string/jumbo v25, "edge_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v25, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/display/ScreenZoomPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenZoom:Lcom/android/settings/display/ScreenZoomPreference;

    const-string/jumbo v25, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v25, "homescreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_3c
    const-string/jumbo v25, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string/jumbo v27, ""

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_4c

    const/16 v25, 0x1

    :goto_1e
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME"

    const-string/jumbo v27, ""

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v26, "SupportForceTouch"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNavigationbar:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f121243

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_3d
    :goto_1f
    const-string/jumbo v25, "full_screen_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3e

    const-string/jumbo v25, "full_screen_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v25

    if-eqz v25, :cond_4e

    const-string/jumbo v25, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    const-string/jumbo v25, "auto_brightness_no_pac"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAutoBrightness()V

    :cond_3f
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_50

    const-string/jumbo v25, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_40
    :goto_22
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDoubleTapMenu()Z

    move-result v25

    if-eqz v25, :cond_51

    const-string/jumbo v25, "double_tab_to_wake_up"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_41
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->registerBrightnessResetUsagePatternsReceiver()V

    new-instance v25, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_42
    const/16 v25, 0x0

    goto/16 :goto_16

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_17

    :cond_44
    const-string/jumbo v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v25

    const-string/jumbo v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_32

    goto/16 :goto_19

    :cond_46
    const-string/jumbo v25, "screen_off_pocket"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1b

    :cond_48
    const-string/jumbo v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_49
    const-string/jumbo v25, "-nightclock"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4a

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    :goto_24
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v25

    if-eqz v25, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1c

    :cond_4a
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    goto :goto_24

    :cond_4b
    const/4 v11, 0x0

    goto/16 :goto_1d

    :cond_4c
    const/16 v25, 0x0

    goto/16 :goto_1e

    :cond_4d
    const-string/jumbo v25, "navigation_Bar"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_4e
    const-string/jumbo v25, "auto_brightness_no_pac"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    const-string/jumbo v25, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_4f
    const-string/jumbo v25, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v25, "auto_brightness_no_pac"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    goto/16 :goto_21

    :cond_50
    const-string/jumbo v25, "screen_timeout_for_dex"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_51
    const-string/jumbo v25, "double_tab_to_wake_up"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_23
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->unRegisterBrightnessResetUsagePatternsReceiver()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Display"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 38

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v33, "screen_timeout"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0446

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    sparse-switch v30, :sswitch_data_0

    :goto_0
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v33

    if-eqz v33, :cond_0

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "isInDefaultTimeoutList = true"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_off_timeout_rollback"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    if-eqz v33, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_off_timeout"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const-string/jumbo v34, "device_policy"

    invoke-virtual/range {v33 .. v34}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    if-eqz v12, :cond_12

    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v24

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "lock_screen_lock_after_timeout"

    const-wide/16 v36, 0x1388

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v34, 0x0

    cmp-long v33, v24, v34

    if-eqz v33, :cond_2

    cmp-long v33, v24, v10

    if-gez v33, :cond_2

    move-wide/from16 v10, v24

    :cond_2
    const-string/jumbo v33, "SecDisplaySettings"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", currentDeviceLockTimeout: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsDeviceLockTime:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mIsSecuredLock:Z

    move/from16 v33, v0

    if-eqz v33, :cond_3

    const-wide/16 v34, 0x0

    cmp-long v33, v10, v34

    if-eqz v33, :cond_3

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v33, v34, v10

    if-lez v33, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->showScreenTimeDialog()V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "preference mAutoBrightnessPreference"

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_5

    if-nez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_user_touch"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v33

    if-eqz v33, :cond_36

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_36

    const/16 v33, 0x1

    move/from16 v0, v33

    if-eq v7, v0, :cond_36

    const/16 v23, 0x27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v16

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v33, "com.nttdocomo.android.dhome"

    const-string/jumbo v34, "com.nttdocomo.android.dhome.HomeActivity"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    const/16 v33, 0x1

    aget v23, v16, v33

    :cond_4
    invoke-virtual {v4, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->hideHbmText()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "screen_brightness_mode"

    if-eqz v6, :cond_37

    const/16 v33, 0x1

    :goto_5
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v33

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setBrightnessIcon(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b01b1

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_AUTO_BRIGHTNESS:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_AUTO_BRIGHTNESS:I

    if-eqz v6, :cond_38

    const/16 v33, 0x3e8

    :goto_6
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_8

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "wake_gesture_enabled"

    if-eqz v32, :cond_39

    const/16 v33, 0x1

    :goto_7
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_9

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "doze_enabled"

    if-eqz v32, :cond_3a

    const/16 v33, 0x1

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_a

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "double_tap_to_wake"

    if-eqz v32, :cond_3b

    const/16 v33, 0x1

    :goto_9
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_b

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "camera_gesture_disabled"

    if-eqz v32, :cond_3c

    const/16 v33, 0x0

    :goto_a
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "camera_double_tap_power_gesture_disabled"

    if-eqz v32, :cond_3d

    const/16 v33, 0x0

    :goto_b
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightModePreference:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_d

    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const-string/jumbo v33, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/UiModeManager;

    invoke-virtual/range {v29 .. v30}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_f

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "blue_light_filter"

    if-eqz v32, :cond_3e

    const/16 v33, 0x1

    :goto_d
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "blue_light_filter_scheduled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_3f

    const/16 v19, 0x1

    :goto_e
    if-eqz v32, :cond_e

    if-eqz v19, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const v34, 0x7f1203cc

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    :cond_e
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    new-instance v33, Landroid/content/ComponentName;

    const-string/jumbo v34, "com.samsung.android.bluelightfilter"

    const-string/jumbo v35, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct/range {v33 .. v35}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v32, :cond_40

    const-string/jumbo v33, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v34, 0x18

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b00f0

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_BLUE_LIGHT_FILTER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_BLUE_LIGHT_FILTER:I

    if-eqz v32, :cond_41

    const/16 v33, 0x1

    :goto_10
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_10

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_42

    const/16 v33, 0x0

    const v34, 0x7f1212e8

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    :cond_10
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    if-eqz v28, :cond_11

    move-object/from16 v31, p2

    check-cast v31, Ljava/lang/String;

    const-string/jumbo v33, "timeout_dex"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v33, "screen_off_timeout"

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setDeXTimeoutEntry(J)V

    :cond_11
    const/16 v33, 0x1

    return v33

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x4

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_TIMEOUT:I

    const/16 v35, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v33 .. v35}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist screen timeout setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_12
    const-wide/16 v24, 0x0

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v33, "screensaver"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_17

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_14

    const/16 v30, 0x1

    :goto_12
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    new-instance v33, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateScreenSaverSummary()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0441

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_SAVER:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_SCREEN_SAVER:I

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_16

    const/16 v33, 0x3e8

    :goto_14
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_14
    const/16 v30, 0x0

    goto :goto_12

    :cond_15
    new-instance v33, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    goto :goto_13

    :cond_16
    const/16 v33, 0x0

    goto :goto_14

    :cond_17
    const-string/jumbo v33, "always_on_screen"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_21

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v33

    const-string/jumbo v34, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f12018b

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f120175

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v5, v34, v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    const/16 v33, 0x0

    return v33

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "accessibility_display_magnification_enabled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "accessibility_display_magnification_navbar_enabled"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1a

    const/16 v20, 0x1

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "finger_magnifier"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-nez v33, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "FmMagnifier"

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    if-eqz v33, :cond_1c

    const/16 v21, 0x1

    :goto_16
    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x0

    const v34, 0x7f120175

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_19
    const/16 v20, 0x1

    goto :goto_15

    :cond_1a
    const/16 v20, 0x0

    goto :goto_15

    :cond_1b
    const/16 v21, 0x1

    goto :goto_16

    :cond_1c
    const/16 v21, 0x0

    goto :goto_16

    :cond_1d
    if-eqz v32, :cond_1e

    if-eqz v20, :cond_1e

    const/16 v33, 0x1

    const v34, 0x7f120175

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_1e
    if-eqz v32, :cond_1f

    if-eqz v21, :cond_1f

    const/16 v33, 0x2

    const v34, 0x7f120175

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeAccessiblityDisablePopup(II)V

    goto/16 :goto_3

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "aod_mode"

    if-eqz v32, :cond_20

    const/16 v33, 0x1

    :goto_17
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_20
    const/16 v33, 0x0

    goto :goto_17

    :cond_21
    const-string/jumbo v33, "touch_key_light"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "button_key_light"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mTouchKeyLight:Landroid/support/v7/preference/SecListPreference;

    move-object/from16 v33, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_18
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    :catch_1
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist Touch key light setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    :cond_22
    const-string/jumbo v33, "sub_lcd_auto_lock"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_24

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "sub_lcd_auto_lock"

    if-eqz v32, :cond_23

    const/16 v33, 0x1

    :goto_19
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_23
    const/16 v33, 0x0

    goto :goto_19

    :cond_24
    const-string/jumbo v33, "key_night_mode"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_26

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "key_night_mode"

    if-eqz v32, :cond_25

    const/16 v33, 0x1

    :goto_1a
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_25
    const/16 v33, 0x0

    goto :goto_1a

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_28

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "display_outdoor_mode"

    if-eqz v32, :cond_27

    const/16 v33, 0x1

    :goto_1b
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b01c3

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    sget v34, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_OUTDOOR_MODE:I

    invoke-static/range {v33 .. v34}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_27
    const/16 v33, 0x0

    goto :goto_1b

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_29

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    xor-int/lit8 v34, v32, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setLedIndicator(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b02fb

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_LED_INDICATOR:I

    if-eqz v32, :cond_2a

    const/16 v33, 0x3e8

    :goto_1c
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2a
    const/16 v33, 0x0

    goto :goto_1c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "screen_off_pocket"

    if-eqz v32, :cond_2c

    const/16 v33, 0x1

    :goto_1d
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b02c9

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v33

    sput v33, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v34

    sget v35, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_KEEP_SCREEN_TURNED_OFF:I

    if-eqz v32, :cond_2d

    const/16 v33, 0x3e8

    :goto_1e
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2c
    const/16 v33, 0x0

    goto :goto_1d

    :cond_2d
    const/16 v33, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_33

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_2f

    const/16 v30, 0x1

    :goto_1f
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V

    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_32

    const v33, 0x7f121b3e

    :goto_21
    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v34, v0

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    :cond_2f
    const/16 v30, 0x0

    goto :goto_1f

    :cond_30
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V

    goto :goto_20

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "intelligent_sleep_mode"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_20

    :cond_32
    const v33, 0x7f121995

    goto :goto_21

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    move-object/from16 v33, p2

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "double_tab_to_wake_up"

    if-eqz v32, :cond_34

    const/16 v33, 0x1

    :goto_22
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_34
    const/16 v33, 0x0

    goto :goto_22

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_pms_marker_screen"

    const/16 v35, 0x64

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "brightness_pms_marker_screen"

    const/16 v35, 0x64

    invoke-static/range {v33 .. v35}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const-string/jumbo v34, "screen_brightness"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_37
    const/16 v33, 0x0

    goto/16 :goto_5

    :cond_38
    const/16 v33, 0x0

    goto/16 :goto_6

    :cond_39
    const/16 v33, 0x0

    goto/16 :goto_7

    :cond_3a
    const/16 v33, 0x0

    goto/16 :goto_8

    :cond_3b
    const/16 v33, 0x0

    goto/16 :goto_9

    :cond_3c
    const/16 v33, 0x1

    goto/16 :goto_a

    :cond_3d
    const/16 v33, 0x1

    goto/16 :goto_b

    :catch_2
    move-exception v14

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "could not persist night mode setting"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :cond_3e
    const/16 v33, 0x0

    goto/16 :goto_d

    :cond_3f
    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_40
    const-string/jumbo v33, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v34, 0x19

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_f

    :cond_41
    const/16 v33, 0x0

    goto/16 :goto_10

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v33, v0

    if-eqz v33, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "aod_night_mode"

    if-eqz v32, :cond_43

    const/16 v33, 0x1

    :goto_23
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_24
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    new-instance v33, Landroid/content/ComponentName;

    const-string/jumbo v34, "com.samsung.android.app.cocktailbarservice"

    const-string/jumbo v35, "com.samsung.android.app.edgeclock.nightclock.NightClockService"

    invoke-direct/range {v33 .. v35}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_11

    :catch_3
    move-exception v13

    const-string/jumbo v33, "SecDisplaySettings"

    const-string/jumbo v34, "start Night clock service is failed."

    invoke-static/range {v33 .. v34}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_43
    const/16 v33, 0x0

    goto :goto_23

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string/jumbo v35, "night_mode"

    if-eqz v32, :cond_45

    const/16 v33, 0x1

    :goto_25
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_24

    :cond_45
    const/16 v33, 0x0

    goto :goto_25

    :sswitch_data_0
    .sparse-switch
        0x3a98 -> :sswitch_0
        0x7530 -> :sswitch_1
        0xea60 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x493e0 -> :sswitch_4
        0x927c0 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenMode:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120fe0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return v1

    :cond_2
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.NewModePreview"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAccessibilityVisionEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f1203d0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mFontPreview:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.FontPreview"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.service.peoplestripe"

    const-string/jumbo v2, "com.samsung.android.service.peoplestripe.settings.TurnOverLighting"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v1, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120175

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return v1

    :cond_a
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_ALWAYS_ON_DISPLAY:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_2
    move-exception v12

    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :try_start_3
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_NIGHT_CLOCK:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    :try_start_4
    const-string/jumbo v1, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v12

    const-string/jumbo v1, "SecDisplaySettings"

    const-string/jumbo v2, "ActivityNotFoundException in NightClock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_e

    const/16 v17, 0x1

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sem_perfomance_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/16 v16, 0x1

    :goto_5
    if-eqz v16, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_e
    const/16 v17, 0x0

    goto :goto_4

    :cond_f
    const/16 v16, 0x0

    goto :goto_5

    :cond_10
    if-nez v17, :cond_11

    :try_start_5
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.SCREEN_RESOLUTION_ACTIVITY"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v12

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return v1

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "StartEdit"

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PackageName"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ClassName"

    const-string/jumbo v2, "com.android.settings.Settings$LaunchDisplaySettingsActivity"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_HOME_SCREEN:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/display/SecDisplaySettings;->DISPLAY_HOME_SCREEN:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNeedToFinishOnStop:Z

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const/4 v1, 0x0

    return v1

    :cond_15
    :try_start_6
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/display/SecDisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 29

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/SecDisplaySettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    invoke-static/range {v24 .. v27}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/TimeoutListPreference;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string/jumbo v25, "device_policy"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateState()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mRotate:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "screen_off_timeout"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "screen_mode_setting"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v24, "com.android.settings.action.FONT_SIZE_CLOSE"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v24, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v24, "SecDisplaySettings"

    const-string/jumbo v25, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "access_control_enabled"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateAccessControlCheckbox()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "intelligent_sleep_mode"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_15

    const/16 v20, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/16 v20, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    if-eqz v20, :cond_16

    const v24, 0x7f121b3e

    :goto_1
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "intelligent_sleep_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAutoBrightnessPreference:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "screen_brightness_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "display_outdoor_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_17

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorMode:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "display_outdoor_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "turn_over_lighting"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEdgeLighting:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v25, v0

    if-eqz v16, :cond_19

    const v24, 0x7f121b3e

    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSimpleLEDIndicator:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getLedIndicator()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "screen_off_pocket"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenOffPocket:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    sget-object v24, Lcom/samsung/android/settings/display/SecDisplaySettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const v25, 0x7f120198

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "aod_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockAOD:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "aod_night_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_1d

    const/4 v13, 0x1

    :goto_7
    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getNightclocksummary()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "aod_night_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "blue_light_filter"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_23

    const/4 v10, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilter:Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->setChecked(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterSummary()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateBlueLightFilterStatus()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "blue_light_filter"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "blue_light_filter_type"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBlueLightFilterOptionObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "greyscale_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mGrayscaleObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "high_contrast"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNegativeColorObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "color_blind"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getCurrentResolution()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "display_size_forced"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolutionObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "low_power"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_24

    const/4 v11, 0x1

    :goto_b
    if-nez v11, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v24

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "sem_perfomance_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_26

    :cond_f
    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f1214ae

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mHomeScreen:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDefaultLauncher()Z

    move-result v24

    if-eqz v24, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isKnoxHomeScreenRunning()Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->updateStateForDesktopMenuItem()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isGameModeEnabled(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f120509

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    :cond_12
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v24, "timeout_dex"

    const v25, 0x927c0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setDeXTimeoutEntry(J)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->isDeXScreenTimeoutChangeAllowed()Z

    move-result v24

    if-eqz v24, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    :cond_13
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "double_tab_to_wake_up"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_2b

    const/16 v17, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mDoubleTabToWakeUp:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->setLinkedDataView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v26, v0

    const-string/jumbo v27, "Display"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEmStateReqCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmStateReqCallback;)V

    return-void

    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_16
    const v24, 0x7f121995

    goto/16 :goto_1

    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_19
    const v24, 0x7f121b3d

    goto/16 :goto_4

    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_1b
    const v24, 0x7f12019a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f120175

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12171e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mAlwaysOnScreen:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v24, v0

    const v25, 0x7f1212e7

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v26, "night_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_20

    const v24, 0x7f121b3e

    :goto_12
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v26, "night_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_21

    const/16 v24, 0x1

    :goto_13
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClock:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v26, "night_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_22

    const/16 v24, 0x1

    :goto_14
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "night_mode"

    invoke-static/range {v25 .. v25}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_9

    :cond_20
    const v24, 0x7f1212e7

    goto :goto_12

    :cond_21
    const/16 v24, 0x0

    goto :goto_13

    :cond_22
    const/16 v24, 0x0

    goto :goto_14

    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_24
    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "sem_perfomance_mode"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f120509

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f120505

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f12050b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenResolution:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_d

    :cond_27
    const/16 v24, 0x0

    goto/16 :goto_e

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const v26, 0x7f120ccd

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    const v26, 0x7f12174d

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mEasyModePreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto/16 :goto_f

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeoutForDeXPreference:Lcom/android/settings/TimeoutListPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/TimeoutListPreference;->setEnabled(Z)V

    goto/16 :goto_10

    :cond_2b
    const/16 v17, 0x0

    goto/16 :goto_11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->isMaxBrightnessDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "maxBrightnessDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mNeedToFinishOnStop:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "onStop mNeedToFinishOnStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public registerBrightnessResetUsagePatternsReceiver()V
    .locals 4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/display/SecDisplaySettings$31;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDisplaySettings$31;-><init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.settings.action.RESET_BRIGHTNESS_USAGE_PATTERN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 15

    const/4 v14, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    :cond_0
    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "SecDisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v14, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    :cond_1
    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f0d01fd

    invoke-virtual {v4, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0a01c5

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f12175b

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f121759

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    invoke-virtual {v0, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public unRegisterBrightnessResetUsagePatternsReceiver()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings;->mBrightnessUsagePatternResetReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
