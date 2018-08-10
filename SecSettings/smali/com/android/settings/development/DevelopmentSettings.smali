.class public Lcom/android/settings/development/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/DevelopmentSettings$1;,
        Lcom/android/settings/development/DevelopmentSettings$2;,
        Lcom/android/settings/development/DevelopmentSettings$3;,
        Lcom/android/settings/development/DevelopmentSettings$4;,
        Lcom/android/settings/development/DevelopmentSettings$5;,
        Lcom/android/settings/development/DevelopmentSettings$SummaryProvider;,
        Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final MOCK_LOCATION_APP_OPS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

.field private mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field private mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

.field private mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

.field private mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

.field private mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

.field private mClearAdbKeys:Landroid/support/v7/preference/Preference;

.field private mColorModePreference:Lcom/android/settings/development/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/support/v7/preference/Preference;

.field private mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

.field private mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

.field private mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

.field private mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

.field private mForceResizable:Landroid/support/v14/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

.field private mGPUWatchApp:Ljava/lang/String;

.field private mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

.field private mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

.field private mGpuWatchDiscoverTaps:I

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

.field private mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mLogdSize:Landroid/support/v7/preference/ListPreference;

.field private mLogpersist:Landroid/support/v7/preference/ListPreference;

.field private mLogpersistClearDialog:Landroid/app/Dialog;

.field private mLogpersistCleared:Z

.field private mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

.field private mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/support/v7/preference/Preference;

.field private mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

.field private mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

.field private mPassword:Landroid/support/v7/preference/Preference;

.field private mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

.field private mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

.field private mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

.field private mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowTouches:Landroid/support/v14/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

.field private mStrictMode:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

.field private mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbBlocked:Z

.field private mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

.field private mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

.field private mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

.field private mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/development/DevelopmentSettings;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/development/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchMenuAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettings;->showEnableOemUnlockPreference(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/development/DevelopmentSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/DevelopmentSettings;->sendIntentMasterClear(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/development/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/development/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/development/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/development/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v1, "i_love_office_tg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettings;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$4;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$5;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbBlocked:Z

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettings$1;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettings$2;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettings$3;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private confirmDisableOemUnlock()V
    .locals 5

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettings$8;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    new-instance v1, Lcom/android/settings/development/DevelopmentSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettings$9;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120624

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120623

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12085d

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettings$6;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    new-instance v1, Lcom/android/settings/development/DevelopmentSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettings$7;-><init>(Lcom/android/settings/development/DevelopmentSettings;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isSkeymasterSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120629

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isSkeymasterSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120627

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120932

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v2, 0x7f120628

    goto :goto_0

    :cond_1
    const v2, 0x7f120625

    goto :goto_1
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static decryptSKT(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettings;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v9

    sget-object v10, Lcom/android/settings/development/DevelopmentSettings;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v11, 0x2

    invoke-virtual {v1, v11, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    :goto_0
    return-object v7

    :catch_0
    move-exception v2

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v6

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v5

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "ro.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "65536"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "262144"

    goto :goto_0
.end method

.method private disableForUser(Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private disableGpuWatchMenu()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "development"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "gpuwatch_show"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v1, "games_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    :cond_3
    return-void
.end method

.method private enableGpuWatchMenu()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "development"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "gpuwatch_show"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v1, "games_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchApp()V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchRenderingAPI()V

    iput v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/efs/sec_efs/sktdm_mem/encmembership.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/development/DevelopmentSettings;->decryptSKT(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string/jumbo v3, "DevelopmentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "member = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "member"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v3, :cond_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v1, "none"

    goto :goto_0

    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v2, v7

    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v4, "isFirmwareRecoveryAllowed"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/development/DevelopmentSettings;->isOTAUpgradeAllowedByEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v7

    :cond_1
    return v8
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string/jumbo v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private initBluetoothConfigurationValues()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "persist.bluetooth.avrcpversion"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_BT_SupportScmst"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private isBootloaderUnlocked()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isGpuWatchMenuAvailable(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "development"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "gpuwatch_show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isGpuWatchSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isOTAUpgradeAllowedByEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DevelopmentSettings"

    const-string/jumbo v2, "isOTAUpgradeAllowedByEDM is false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method private isSimLockedDevice()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isSkeymasterSupported()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v5, "1"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "DevelopmentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSkeymasterSupported Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_1
    move-exception v3

    const-string/jumbo v5, "DevelopmentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSkeymasterSupported NumberFormatException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private removePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetDangerousOptions()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDontPokeProperties:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->resetPreference()V

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->resetDebuggerOptions()V

    invoke-direct {p0, v4, v3}, Lcom/android/settings/development/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/development/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/settings/development/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAllOptions()V

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mDontPokeProperties:Z

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 5

    const-string/jumbo v2, "shortcut"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12161f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DevelopmentSettings"

    const-string/jumbo v3, "Failed to reset rate limiting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendIntentMasterClear(Z)V
    .locals 8

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "DevelopmentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendIntentMasterClear : enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FROM_OEM_UNLOCK"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "OEM_UNLOCK_ENABLE"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f12110e

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private setLogpersistOff(Z)V
    .locals 6

    const-string/jumbo v3, "persist.logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.logd.logpersistd"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "logd.logpersistd"

    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogpersistValues()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v3, "stop"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const-string/jumbo v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->enablePreference(Z)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->enablePreference(Z)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/webview/WebViewAppPreferenceController;->enablePreference(Z)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static showEnableOemUnlockPreference(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableUnlock rlcState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "Prenormal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Normal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Locked"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Blink"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "DevelopmentSettings"

    const-string/jumbo v5, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    :cond_1
    const-string/jumbo v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableUnlock  : 1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / 2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ro.boot.other.locked"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v3, "ro.boot.other.locked"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    return v3
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f1213af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private updateAllOptions()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "adb_enabled"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v7, "com.android.terminal"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {p0, v6, v3}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {v6}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->updatePreference()Z

    move-result v6

    or-int/2addr v3, v6

    iput-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v6}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->updatePreference()Z

    move-result v6

    or-int/2addr v3, v6

    iput-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v3, "stay_on_while_plugged_in"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {p0, v6, v3}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "persist.bluetooth.btsnoopenable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v3, "debug_view_attributes"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {p0, v6, v3}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "force_allow_on_external"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v4, "debug.gpuwatch.status"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchRenderingAPI()V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateHdcpValues()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updatePasswordSummary()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateMockLocation()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateStrictModeVisualOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updatePointerLocationOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowTouchesOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateFlingerOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateHardwareUiOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateMsaaOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowNonRectClipOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebugHwRendererOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebugLayoutOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAnimationScaleOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAppProcessLimitOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowAllANRsOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowNotificationChannelWarningsOptions()V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updatePreference()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateOtaDisableAutomaticUpdateOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBugreportOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateForceRtlOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogdSizeValues()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogpersistValues()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateSimulateColorSpace()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateUSBAudioOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateForceResizableOptions()V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/webview/WebViewAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {v3, v2}, Lcom/android/settings/webview/WebViewAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateOemUnlockOptions()V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchApp()V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateColorTemperature()V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBluetoothDisableAbsVolumeOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    return-void

    :cond_5
    move v3, v5

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto/16 :goto_1

    :cond_7
    move v3, v5

    goto/16 :goto_2

    :cond_8
    move v3, v5

    goto/16 :goto_3

    :cond_9
    move v4, v5

    goto/16 :goto_4
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateBluetoothA2dpConfigurationValues()V
    .locals 15

    const v14, 0x7f1204c4

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v11, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_0
    monitor-exit v11

    if-nez v0, :cond_1

    return-void

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :catch_0
    move-exception v4

    return-void

    :cond_2
    const/4 v5, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_BT_SupportScmst"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_0
    if-ltz v5, :cond_3

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_BT_SupportScmst"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f030041

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    :goto_1
    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v8, v5

    aput-object v11, v10, v12

    invoke-virtual {v6, v14, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f030040

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v11, v9, v5

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    const/4 v5, -0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    :goto_2
    :pswitch_0
    if-ltz v5, :cond_4

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_4

    const v10, 0x7f030035

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v8, v5

    aput-object v11, v10, v12

    invoke-virtual {v6, v14, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v5, -0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v10

    packed-switch v10, :pswitch_data_2

    :goto_3
    :pswitch_1
    if-ltz v5, :cond_5

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_5

    const v10, 0x7f03002c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v8, v5

    aput-object v11, v10, v12

    invoke-virtual {v6, v14, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v5, -0x1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v10

    packed-switch v10, :pswitch_data_3

    :goto_4
    if-ltz v5, :cond_6

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_6

    const v10, 0x7f03002f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v8, v5

    aput-object v11, v10, v12

    invoke-virtual {v6, v14, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v10

    long-to-int v5, v10

    if-lez v5, :cond_a

    rem-int/lit8 v5, v5, 0xa

    :goto_5
    packed-switch v5, :pswitch_data_4

    const/4 v5, -0x1

    :pswitch_2
    if-ltz v5, :cond_7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    if-eqz v10, :cond_7

    const v10, 0x7f030032

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    new-array v10, v13, [Ljava/lang/Object;

    aget-object v11, v8, v5

    aput-object v11, v10, v12

    invoke-virtual {v6, v14, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :pswitch_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_4
    const/4 v5, -0x1

    goto/16 :goto_0

    :pswitch_5
    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_6
    const/4 v5, -0x1

    goto/16 :goto_0

    :pswitch_7
    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_8
    const/4 v5, 0x3

    goto/16 :goto_0

    :pswitch_9
    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v10

    packed-switch v10, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_b
    const/4 v5, 0x1

    goto/16 :goto_0

    :pswitch_c
    const/4 v5, 0x2

    goto/16 :goto_0

    :pswitch_d
    const/4 v5, -0x1

    goto/16 :goto_0

    :pswitch_e
    const/4 v5, 0x3

    goto/16 :goto_0

    :pswitch_f
    const/4 v5, 0x4

    goto/16 :goto_0

    :pswitch_10
    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_9
    const v10, 0x7f03003e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_11
    const/4 v5, 0x1

    goto/16 :goto_2

    :pswitch_12
    const/4 v5, 0x2

    goto/16 :goto_2

    :pswitch_13
    const/4 v5, 0x3

    goto/16 :goto_2

    :pswitch_14
    const/4 v5, 0x4

    goto/16 :goto_2

    :pswitch_15
    const/4 v5, 0x1

    goto/16 :goto_3

    :pswitch_16
    const/4 v5, 0x2

    goto/16 :goto_3

    :pswitch_17
    const/4 v5, 0x3

    goto/16 :goto_3

    :pswitch_18
    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_19
    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_a
    const/4 v5, -0x1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_1
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private updateBluetoothDisableAbsVolumeOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateBugreportOptions()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BugReportPreferenceController;->enablePreference(Z)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->updateBugreportOptions()V

    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDebugHwRendererOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "debug.hwui.renderer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f120776

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iput-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    :goto_2
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f120775

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iget-object v12, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v11, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v11, v10

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private updateForceResizableOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "force_resizable_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateForceRtlOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateGPUWatchApp()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "debug.gpuwatch.proc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    const/16 v6, 0x200

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120ca4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateGPUWatchRenderingAPI()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "debug.gpuwatch.api"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    const-string/jumbo v3, "debug.gpuwatch.api"

    aget-object v4, v2, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_1

    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0300d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0300d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v2

    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 13

    const v12, 0x7f0300ff

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_8

    const-string/jumbo v8, "persist.log.tag"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "persist.logd.size"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string/jumbo v8, "Settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v2, "32768"

    :cond_0
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_2

    const-string/jumbo v8, "logd.logpersistd.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    const-string/jumbo v8, "32768"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_1
    invoke-direct {p0, v9, v11}, Lcom/android/settings/development/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030102

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030101

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    const-string/jumbo v8, "ro.config.low_ram"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f030100

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_7

    aget-object v8, v7, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    move v4, v3

    :cond_7
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    return-void

    :cond_9
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-virtual {v8}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->getLastEnabledState()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateLogpersistValues()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :cond_1
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string/jumbo v1, "all"

    :cond_3
    const/4 v4, 0x0

    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x3

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030105

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030103

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz v4, :cond_8

    iput-boolean v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistCleared:Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string/jumbo v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "radio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    const-string/jumbo v5, "security"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x2

    const-string/jumbo v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "main"

    aput-object v5, v0, v8

    const-string/jumbo v5, "events"

    aput-object v5, v0, v9

    const-string/jumbo v5, "system"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "crash"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/4 v3, 0x0

    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_5

    const-string/jumbo v5, "logd.logpersistd"

    const-string/jumbo v6, "clear"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    iput-boolean v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistCleared:Z

    goto :goto_1
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data_always_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateMockLocation()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    sget-object v8, Lcom/android/settings/development/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    :cond_1
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f121199

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/development/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-boolean v12, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    :goto_1
    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const v9, 0x7f121198

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateOemUnlockOptions()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/development/OemUnlockUtils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateOemUnlockSettingDescription()V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_1

    const v0, 0x7f1213b4

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1213b0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f1213b3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/development/OemUnlockUtils;->isOemUnlockAllowed(Landroid/os/UserManager;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f1213b2

    goto :goto_0
.end method

.method private updateOtaDisableAutomaticUpdateOptions()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ota_disable_automatic_update"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120f8a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120f8b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "hide"

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateShowNotificationChannelWarningsOptions()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_notification_channel_warnings"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v4, "accessibility_display_daltonizer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f12004e

    invoke-virtual {p0, v6}, Lcom/android/settings/development/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f1206c9

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/development/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 7

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, "accessibility_display_daltonizer"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v6
.end method

.method private writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeBluetoothAvrcpVersion(Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v2, "persist.bluetooth.avrcpversion"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private writeBluetoothConfigurationOption(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V
    .locals 25

    const v3, 0xf4240

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_BT_SupportScmst"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f030041

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v23

    const-string/jumbo v24, "CscFeature_BT_SupportScmst"

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    packed-switch v19, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f030035

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f03002c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_2

    :goto_3
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f03002f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_3

    :goto_4
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f030032

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    aget-object v24, v22, v19

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_4

    :goto_5
    new-instance v2, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-direct/range {v2 .. v15}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothCodecConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :cond_5
    monitor-exit v24

    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f03003e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    :pswitch_3
    const/4 v3, 0x0

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_4
    const/4 v3, 0x2

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_5
    const/4 v3, 0x4

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_6
    const/4 v3, 0x5

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_7
    const/4 v3, 0x6

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v24

    return-void

    :catchall_0
    move-exception v23

    monitor-exit v24

    throw v23

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    monitor-exit v24

    return-void

    :catchall_1
    move-exception v23

    monitor-exit v24

    throw v23

    :cond_9
    packed-switch v19, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_a
    const/4 v3, 0x0

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_b
    const/4 v3, 0x1

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_c
    const/4 v3, 0x2

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_d
    const/4 v3, 0x4

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_e
    const/4 v3, 0x5

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_f
    const/4 v3, 0x6

    const v4, 0xf4240

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_a
    monitor-exit v24

    return-void

    :catchall_2
    move-exception v23

    monitor-exit v24

    throw v23

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_b
    monitor-exit v24

    return-void

    :catchall_3
    move-exception v23

    monitor-exit v24

    throw v23

    :pswitch_12
    const/4 v5, 0x1

    goto/16 :goto_2

    :pswitch_13
    const/4 v5, 0x2

    goto/16 :goto_2

    :pswitch_14
    const/4 v5, 0x4

    goto/16 :goto_2

    :pswitch_15
    const/16 v5, 0x8

    goto/16 :goto_2

    :pswitch_16
    const/4 v6, 0x1

    goto/16 :goto_3

    :pswitch_17
    const/4 v6, 0x2

    goto/16 :goto_3

    :pswitch_18
    const/4 v6, 0x4

    goto/16 :goto_3

    :pswitch_19
    const/4 v7, 0x1

    goto/16 :goto_4

    :pswitch_1a
    const/4 v7, 0x2

    goto/16 :goto_4

    :pswitch_1b
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v8, v0

    goto/16 :goto_5

    :catchall_4
    move-exception v23

    monitor-exit v24

    throw v23

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private writeBluetoothDisableAbsVolumeOptions()V
    .locals 2

    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string/jumbo v1, "persist.bluetooth.btsnoopenable"

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeColorTemperature()V
    .locals 3

    const-string/jumbo v1, "persist.sys.debug.color_temp"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1205e9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugHwRendererOptions(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v1, "debug.hwui.renderer"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebugHwRendererOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    const-string/jumbo v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private writeForceResizableOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_resizable_activities"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeGPUWatch()V
    .locals 2

    const-string/jumbo v0, "debug.gpuwatch.status"

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeGPUWatchApp()V
    .locals 2

    const-string/jumbo v0, "debug.gpuwatch.proc"

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeGPUWatchRenderingAPI(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "debug.gpuwatch.api"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchRenderingAPI()V

    return-void
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 9

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "32768"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    const-string/jumbo v6, ",+Settings"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "^Settings,*"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ",+"

    const-string/jumbo v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ",+$"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    const-string/jumbo p1, "65536"

    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    const-string/jumbo v6, "log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    const-string/jumbo v7, "I"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v6, "persist.logd.size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v4, ""

    :cond_7
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "logd-reinit"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogdSizeValues()V

    return-void

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v4, v1

    goto :goto_1
.end method

.method private writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "persist.log.tag"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v5, "Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    if-eqz p2, :cond_4

    iput-boolean v7, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistCleared:Z

    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/development/DevelopmentSettings;->setLogpersistOff(Z)V

    return-void

    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_3

    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->dismissDialogs()V

    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1207d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f1207d4

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_6
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    invoke-direct {p0, v7}, Lcom/android/settings/development/DevelopmentSettings;->setLogpersistOff(Z)V

    :cond_7
    const-string/jumbo v5, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "persist.logd.logpersistd"

    const-string/jumbo v6, "logcatd"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogpersistValues()V

    return-void

    :cond_9
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data_always_on"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    sget-object v7, Lcom/android/settings/development/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x200

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x3a

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOtaDisableAutomaticUpdateOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ota_disable_automatic_update"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateShowNonRectClipOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowNotificationChannelWarningsOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDashboardCategoryPreferences()V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getMetricsCategory()I

    move-result v7

    const-string/jumbo v8, "com.android.settings.category.ia.development"

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateDebuggerOptions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeMockLocation()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isSkeymasterSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->confirmDisableOemUnlock()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/development/OemUnlockUtils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeGPUWatchApp()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateGPUWatchApp()V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/development/DevelopmentSettingsEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updatePreference()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBugreportOptions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v1, "DevelopmentSettings"

    const-string/jumbo v2, "Unable to clear adb keys"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_a

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->enableDevelopmentSettings()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v3, "isUsbDebuggingEnabled"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v3, "isMockLocationEnabled"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v3, "isKillingActivitiesOnLeaveAllowed"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isBackgroundProcessLimitEnabled"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v13, v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    if-ne v12, v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne v10, v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v11, v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Developer options is enabled"

    const/4 v1, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v8, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/development/DevelopmentSettings;->setLogpersistOff(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateLogpersistValues()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v9, "backup"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "persistent_data_block"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v9, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

    new-instance v9, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    new-instance v9, Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    new-instance v9, Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/webview/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    new-instance v9, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->setIfOnlyAvailableForAdmins(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->isUiRestricted()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUnavailable:Z

    const v9, 0x7f150065

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addPreferencesFromResource(I)V

    return-void

    :cond_1
    const v9, 0x7f15004d

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v9, "debug_debugging_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v9, "enable_adb"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v9

    if-eqz v9, :cond_2

    :try_start_0
    const-string/jumbo v9, "usb"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/hardware/usb/IUsbManager;->isUsbBlocked()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbBlocked:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbBlocked:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    const-string/jumbo v9, "clear_adb_keys"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    const-string/jumbo v9, "ro.adb.secure"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "enable_terminal"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.android.terminal"

    invoke-static {v9, v10}, Lcom/android/settings/development/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    :cond_4
    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/development/BugReportPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/webview/WebViewAppPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v9, "keep_screen_on"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v9, "bt_hci_snoop_log"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "oem_unlock_enable"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/development/DevelopmentSettings;->showEnableOemUnlockPreference(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    :cond_5
    const-string/jumbo v9, "debug_view_attributes"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "force_allow_on_external"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "local_backup_password"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    :cond_6
    const-string/jumbo v9, "debug_app"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "wait_for_debugger"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchSupported()Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "games_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v9, "mock_location_app"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v9, "strict_mode"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "pointer_location"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "show_touches"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "show_screen_updates"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "disable_overlays"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "force_hw_ui"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "force_msaa"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "track_frame_time"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "show_non_rect_clip"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "show_hw_screen_udpates"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "show_hw_layers_udpates"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "debug_layout"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "force_rtl_layout_all_locales"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "debug_hw_overdraw"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "debug_hw_renderer"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "wifi_display_certification"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "wifi_verbose_logging"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "wifi_aggressive_handover"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "mobile_data_always_on"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "select_logd_size"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "ro.debuggable"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string/jumbo v9, "select_logpersist"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    :goto_2
    const-string/jumbo v9, "select_usb_configuration"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_disable_absolute_volume"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "bluetooth_select_avrcp_version"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_BT_SupportScmst"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string/jumbo v9, "bluetooth_ss_japan_select_a2dp_codec"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_select_a2dp_codec"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    :cond_7
    :goto_3
    const-string/jumbo v9, "bluetooth_select_a2dp_sample_rate"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_select_a2dp_bits_per_sample"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_select_a2dp_channel_mode"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_select_a2dp_ldac_playback_quality"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->initBluetoothConfigurationValues()V

    const-string/jumbo v9, "window_animation_scale"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "transition_animation_scale"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "animator_duration_scale"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "overlay_display_devices"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "simulate_color_space"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "usb_audio"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "force_resizable_activities"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "immediately_destroy_activities"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "app_process_limit"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "show_all_anrs"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "show_notification_channel_warnings"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "hdcp_checking"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4}, Lcom/android/settings/development/DevelopmentSettings;->removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    const-string/jumbo v9, "convert_to_file_encryption"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    :try_start_1
    const-string/jumbo v9, "mount"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result v9

    if-nez v9, :cond_12

    const-string/jumbo v9, "convert_to_file_encryption"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_4
    const-string/jumbo v9, "ota_disable_automatic_update"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "mobile_keyboard"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "mobile_keyboard"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p0, v10, v9}, Lcom/android/settings/development/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v10, "eng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_b

    :cond_a
    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    :cond_b
    const-string/jumbo v9, "color_mode"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/development/ColorModePreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v9}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v9}, Lcom/android/settings/development/ColorModePreference;->getColorModeCount()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_c

    const-string/jumbo v9, "color_mode"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    :cond_c
    const-string/jumbo v9, "color_temperature"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->addDashboardCategoryPreferences()V

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v9, "DevelopmentSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to check USB Block State"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v9, "gpuwatch"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v9, "gpuwatch_app"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    const-string/jumbo v9, "gpuwatch_rendering_api"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchMenuAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->enableGpuWatchMenu()V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->disableGpuWatchMenu()V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v9, "select_logpersist"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    if-eqz v2, :cond_10

    iget-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v9, "bluetooth_select_a2dp_codec"

    invoke-direct {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v9, "bluetooth_ss_japan_select_a2dp_codec"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    goto/16 :goto_3

    :cond_12
    :try_start_2
    const-string/jumbo v9, "file"

    const-string/jumbo v10, "ro.crypto.type"

    const-string/jumbo v11, "none"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120645

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v3

    const-string/jumbo v9, "convert_to_file_encryption"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_14
    const-string/jumbo v9, "color_temperature"

    invoke-virtual {p0, v9}, Lcom/android/settings/development/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    goto/16 :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateUsbConfigurationValues()V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->dismissDialogs()V

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    iget-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iput-object v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_3
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->stopListening()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "hdcp_checking"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateHdcpValues()V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->pokeSystemProperties()V

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeBluetoothAvrcpVersion(Ljava/lang/Object;)V

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeBluetoothConfigurationOption(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V

    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_4

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_5

    invoke-direct {p0, p2, v2}, Lcom/android/settings/development/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    return v3

    :cond_5
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_6

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    return v3

    :cond_6
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v2, v4, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    return v3

    :cond_7
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_8

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    return v3

    :cond_8
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_9

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v4, 0x2

    invoke-direct {p0, v4, v2, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    return v3

    :cond_9
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_a

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    return v3

    :cond_a
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_b

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    return v3

    :cond_b
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_c

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    return v3

    :cond_c
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_d

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeDebugHwRendererOptions(Ljava/lang/Object;)V

    return v3

    :cond_d
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_e

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    return v3

    :cond_e
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_f

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    return v3

    :cond_f
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_10

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    return v3

    :cond_10
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileKeyboard:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_12

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_keyboard"

    if-eqz v1, :cond_11

    move v2, v3

    :cond_11
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_12
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchRenderingAPI:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v4, :cond_13

    invoke-direct {p0, p2}, Lcom/android/settings/development/DevelopmentSettings;->writeGPUWatchRenderingAPI(Ljava/lang/Object;)V

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eq v4, v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    return v3

    :cond_14
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-virtual {v4, p1}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v4, p1}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWebViewAppPrefController:Lcom/android/settings/webview/WebViewAppPreferenceController;

    invoke-virtual {v4, p1}, Lcom/android/settings/webview/WebViewAppPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {v4, p1}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_8

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->dismissDialogs()V

    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1200df

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040009

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    :goto_0
    return v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "adb_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mVerifyAppsOverUsbController:Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;->updatePreference()V

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_a

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->dismissDialogs()V

    :cond_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1200dd

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x104000a

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "com.android.terminal"

    iget-object v5, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v4, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "stay_on_while_plugged_in"

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x7

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_d
    move v2, v3

    goto :goto_2

    :cond_e
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_f

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    :cond_f
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v4, :cond_12

    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableOemUnlock:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/development/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isSkeymasterSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/development/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->confirmDisableOemUnlock()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/settings/development/OemUnlockUtils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_13

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    const-string/jumbo v4, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/development/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "debug_view_attributes"

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_14

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    move v2, v3

    goto :goto_3

    :cond_15
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "force_allow_on_external"

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_16

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_16
    move v2, v3

    goto :goto_4

    :cond_17
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_18

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/development/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_18
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v4, :cond_19

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    :cond_19
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatchAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_1a

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "com.android.settings.extra.INSTALLED"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3ea

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/development/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGPUWatch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1b

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeGPUWatch()V

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1c

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeOtaDisableAutomaticUpdateOptions()V

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1d

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1e

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_1f

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_20

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    :cond_20
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_21

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    :cond_21
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_22

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_23

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    :cond_23
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_24

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowNotificationChannelWarningsOptions()V

    goto/16 :goto_0

    :cond_24
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_25

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeHardwareUiOptions()V

    iget v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    iget v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->enableGpuWatchMenu()V

    goto/16 :goto_0

    :cond_25
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_26

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    :cond_26
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_27

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    :cond_27
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_28

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    :cond_28
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_29

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    :cond_29
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2a

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    :cond_2b
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2c

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2d

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2e

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    :cond_2e
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_2f

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_30

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_0

    :cond_30
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_31

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    :cond_31
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_32

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeForceResizableOptions()V

    goto/16 :goto_0

    :cond_32
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v2, :cond_33

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->writeBluetoothDisableAbsVolumeOptions()V

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v2, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->resetShortcutManagerThrottling()V

    goto/16 :goto_0

    :cond_34
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 23

    invoke-super/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mUnavailable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v19

    const v20, 0x7f1207da

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchSupported()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchMenuAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/development/DevelopmentSettings;->mGpuWatchDiscoverTaps:I

    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v19, "false"

    const/16 v20, 0x0

    aput-object v19, v17, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v21, "isDeveloperModeAllowed"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_4

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BugReportPreferenceController;->enablePreference(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->enablePreference(Z)V

    const-string/jumbo v19, "inactive_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    const-string/jumbo v19, "running_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/SwitchBar;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->resetDangerousOptions()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    return-void

    :cond_3
    const/16 v19, 0x6

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->getLastEnabledState()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    xor-int/lit8 v19, v15, 0x1

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->enableDevelopmentSettings()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v21, "isGoogleCrashReportedAllowed"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportController:Lcom/android/settings/development/BugReportPreferenceController;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_11

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BugReportPreferenceController;->enablePreference(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBugReportInPowerController:Lcom/android/settings/development/BugReportInPowerPreferenceController;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/development/BugReportInPowerPreferenceController;->enablePreference(Z)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v21, "isUsbDebuggingEnabled"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v21, "isMockLocationEnabled"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v21, "isKillingActivitiesOnLeaveAllowed"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v21, "isBackgroundProcessLimitEnabled"

    const/16 v22, 0x0

    invoke-static/range {v19 .. v22}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_13

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_14

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_15

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_16

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/widget/SwitchBar;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/development/ColorModePreference;->startListening()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/development/ColorModePreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v19

    if-eqz v19, :cond_a

    new-instance v6, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_f
    :goto_9
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mKeepScreenOn:Lcom/android/settingslib/RestrictedSwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/development/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_9
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    const/4 v0, 0x5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->getLastEnabledState()Z

    move-result v6

    if-eq p2, v6, :cond_2

    if-eqz p2, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/development/DevelopmentSettings;->mDialogClicked:Z

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->dismissDialogs()V

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1207d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->resetDangerousOptions()V

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettings;->mSettingsEnabler:Lcom/android/settings/development/DevelopmentSettingsEnabler;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->disableDevelopmentSettings()V

    invoke-direct {p0, v2}, Lcom/android/settings/development/DevelopmentSettings;->setPrefsEnabledState(Z)V

    invoke-static {}, Lcom/android/settings/development/DevelopmentSettings;->isGpuWatchSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettings;->disableGpuWatchMenu()V

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Developer options is disabled"

    const/4 v2, 0x1

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettings;->mHaveDebugSettings:Z

    return-void
.end method
