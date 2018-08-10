.class public Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BiometricsAndSecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$1;,
        Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$2;,
        Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$3;,
        Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$4;,
        Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private isKioskContainer:Z

.field private mAppOpsSettings:Landroid/support/v7/preference/Preference;

.field private mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

.field private final mBiometricsBackupObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFindMyMobile:Landroid/support/v7/preference/Preference;

.field private mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mIsAdmin:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPrivateModeObserver:Landroid/database/ContentObserver;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSamsungPass:Landroid/support/v7/preference/Preference;

.field private mSdcardEncryption:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mUm:Landroid/os/UserManager;

.field private otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isUCMODEEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->privateModeSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->updateBiometricsState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isKioskContainer:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private InitPreference()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "find_my_mobile"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    if-eqz v3, :cond_1

    xor-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    const v9, 0x7f120fd0

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_1
    const-string/jumbo v8, "smart_scan"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v8, "finger_scanner"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v8, "iris_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v8, "silent_lock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v8, "samsung_pass"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    const-string/jumbo v8, "app_ops_settings"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    const-string/jumbo v8, "app_permission_monitor"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v8, "SEAMService"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/samsung/android/knox/seams/ISEAMS;->isAPMEnabled(I)Z

    move-result v0

    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v6, v8}, Lcom/samsung/android/knox/seams/ISEAMS;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    if-lt v8, v12, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_e

    const v8, 0x7f121b3e

    :goto_1
    invoke-virtual {v9, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->updateBiometricsState()V

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x20000

    if-eq v5, v8, :cond_4

    const/high16 v8, 0x30000

    if-ne v5, v8, :cond_f

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_6
    const-string/jumbo v8, "BiometricsAndSecuritySettings"

    const-string/jumbo v9, "Disabling Irises and Fingerprints menu for SD in case of Pin/Pattern as locktype"

    invoke-static {v8, v9}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_9
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isKioskContainer:Z

    const-string/jumbo v8, "BiometricsAndSecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isKioskContainer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isKioskContainer:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isKioskContainer:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isKioskContainer:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_c
    const-string/jumbo v8, "key_private_mode"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_d
    const-string/jumbo v8, "secure_folder"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v8, "BiometricsAndSecuritySettings"

    const-string/jumbo v9, "failed set apmstatus Throwable"

    invoke-static {v8, v9}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v8, "BiometricsAndSecuritySettings"

    const-string/jumbo v9, "failed get apmstatus"

    invoke-static {v8, v9}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    const v8, 0x7f1201fc

    goto/16 :goto_1

    :cond_f
    const/high16 v8, 0x10000

    if-ne v5, v8, :cond_7

    goto/16 :goto_2
.end method

.method private addOtherSecuritySettingsPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    new-instance v0, Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v1, "other_security_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    const v1, 0x7f1213de

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    const v1, 0x7f1213df

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v1, "com.samsung.android.settings.OtherSecuritySettings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->otherSecurityPreferece:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private addSecurityStatusPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 11

    const-string/jumbo v6, "sec_security_category"

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v9

    const-string/jumbo v10, "com.android.settings.category.ia.security"

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    const-string/jumbo v6, "security_status_security_patch_level"

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string/jumbo v6, "security_status_find_device"

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const v6, 0x7f120b09

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const v6, 0x7f120b0f

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    const-string/jumbo v6, "sec_security_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v6, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "security_status_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string/jumbo v9, "com.android.settings.category.ia.security"

    invoke-interface {v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v8

    invoke-interface {v6, v7, p1, v8}, Lcom/android/settings/security/SecurityFeatureProvider;->updatePreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/drawer/DashboardCategory;)V

    :cond_4
    return-void
.end method

.method private apppermissionmonitorSwitchChanged(Z)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.APP_PERMISSION_MONITOR_SWITCH_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "switch_status"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_1

    const v4, 0x7f121b3e

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    const-string/jumbo v4, "SEAMService"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/seams/ISEAMS;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v2, v4, p1}, Lcom/samsung/android/knox/seams/ISEAMS;->APMSwitchChanged(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startApppermissionmonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v4, 0x7f1201fc

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "BiometricsAndSecuritySettings"

    const-string/jumbo v5, "failed change apmstatus Throwable"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v4, "BiometricsAndSecuritySettings"

    const-string/jumbo v5, "failed change apmstatus"

    invoke-static {v4, v5}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 11

    const v10, 0x7f1500fc

    const v9, 0x7f1500fb

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v6, 0x7f1500e5

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const v6, 0x7f15002f

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIsAdmin:Z

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIsAdmin:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isUCMODEEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const v6, 0x7f1500ea

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    const v6, 0x7f1500ef

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    :goto_1
    const-string/jumbo v6, "sdEncpref"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSdcardEncryption:Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->InitPreference()V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addOtherSecuritySettingsPref(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addSecurityStatusPref(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_6
    const-string/jumbo v6, "encryption"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_7
    return-object v2

    :cond_8
    const v6, 0x7f150100

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionAppliedSDCard()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_1

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_d

    const v6, 0x7f1500fd

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1
.end method

.method private static isUCMODEEnabled()Z
    .locals 3

    const-string/jumbo v0, "2"

    const-string/jumbo v1, "ro.boot.ucs_mode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private privateModeSummaryUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b3e

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b3d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static removeFindMyMobile(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    const-string/jumbo v5, "BiometricsAndSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSupportLMM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "BiometricsAndSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasFMMDMClient : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "BiometricsAndSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasMobileTracker : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.mt"

    invoke-static {p0, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "BiometricsAndSecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSmsCapable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :goto_0
    return v4

    :cond_3
    if-nez v3, :cond_4

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportFMM()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private removePreference()V
    .locals 15

    const-string/jumbo v13, "sec_biometrics_category"

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v13, "sec_security_category"

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v3

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v0, :cond_d

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isGuestUser()Z

    move-result v13

    if-nez v13, :cond_1

    if-nez v7, :cond_1

    if-nez v3, :cond_1

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    sget v13, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_3

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isGuestUser()Z

    move-result v13

    if-nez v13, :cond_4

    if-nez v7, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isGuestUser()Z

    move-result v13

    if-nez v13, :cond_7

    if-nez v7, :cond_7

    if-nez v3, :cond_7

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_8

    :cond_7
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_8
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isGuestUser()Z

    move-result v13

    if-nez v13, :cond_a

    if-nez v7, :cond_a

    if-nez v3, :cond_a

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_a

    sget v13, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->MY_USER_ID:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_b
    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v13

    if-ge v1, v13, :cond_c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_17

    const/4 v8, 0x1

    :cond_c
    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    if-eqz v11, :cond_16

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_e

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppOpsSettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_10

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSamsungPass:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_10
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    if-eqz v13, :cond_11

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->removeFindMyMobile(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFindMyMobile:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_11
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mAppPermissionMonitor:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_12
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_13

    if-nez v7, :cond_13

    if-nez v3, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_18

    :cond_13
    :goto_1
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_14

    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_14
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_19

    const/4 v5, 0x1

    :goto_2
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "persona"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v13

    if-eqz v13, :cond_15

    xor-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_16

    :cond_15
    iget-object v13, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSecureFolder:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_16
    return-void

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_1

    :cond_19
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private setLinkedDataView()V
    .locals 14

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v5

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v12, :cond_6

    new-instance v12, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-class v13, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v12, ":settings:show_fragment_title_resid"

    const v13, 0x7f121c88

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2347

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f121c88

    iput v12, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    :cond_0
    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "menu"

    const-string/jumbo v13, "backup"

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x233f

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f12169f

    iput v12, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.sm.ACTION_SECURITY"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v12}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/high16 v12, 0x10200000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2339

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f12018a

    iput v12, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_2
    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x233a

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f120fbf

    iput v12, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    if-nez v5, :cond_3

    xor-int/lit8 v12, v4, 0x1

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_3
    if-eqz v7, :cond_4

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_4
    if-eqz v8, :cond_5

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_5
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private startApppermissionmonitor()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.APP_PERMISSION_MONITOR_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "which_fragment"

    const-string/jumbo v3, "APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:show_fragment"

    const-string/jumbo v3, "com.samsung.android.apppermissionmonitor.APMApplist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFaceSettings(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BiometricsAndSecuritySettings"

    const-string/jumbo v3, "startFaceSettings isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b60

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startFingerprintScanner()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BiometricsAndSecuritySettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b60

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startIrisSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BiometricsAndSecuritySettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b60

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startSmartScanSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BiometricsAndSecuritySettings"

    const-string/jumbo v3, "isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b60

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBiometricsState()V
    .locals 10

    const v9, 0x7f120bdb

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BiometricsAndSecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Utils.isFingerprintDisabledByDPM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->numEnrolledFingerprints()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v2, 0x1

    if-ne v1, v8, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120bec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isIrisDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120e39

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_8

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120acd

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v3

    :goto_5
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_c

    if-nez v0, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/settings/Utils;->isSmartScanDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1219b0

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceScreen;->isEnabled()Z

    move-result v4

    :cond_b
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    return-void

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const v7, 0x7f120bef

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerSanner:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_10
    move v3, v4

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120e1e

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    :cond_12
    move v3, v4

    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f120abe

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_4

    :cond_14
    move v3, v4

    goto/16 :goto_5

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSmartScan:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1219af

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_6
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1130

    return v0
.end method

.method protected isGuestUser()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public moveFindMyMobile()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f120b09

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public numEnrolledFingerprints()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mFingerprintManger:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mUm:Landroid/os/UserManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "app_permission_monitor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->apppermissionmonitorSwitchChanged(Z)V

    :cond_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "find_my_mobile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->moveFindMyMobile()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    const-string/jumbo v5, "smart_scan"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v5

    if-nez v5, :cond_2

    return v8

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startSmartScanSettings()V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "finger_scanner"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v5

    if-nez v5, :cond_4

    return v8

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startFingerprintScanner()V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "iris_settings"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0293

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v5

    if-nez v5, :cond_6

    return v8

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startIrisSettings()V

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "samsung_pass"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0429

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.samsungpass"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "silent_lock"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->isResumed()Z

    move-result v5

    if-nez v5, :cond_9

    return v8

    :cond_9
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startFaceSettings(Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "secure_folder"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b044a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    const-string/jumbo v5, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v5, v9, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "skip_popup"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "app_permission_monitor"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->startApppermissionmonitor()V

    goto/16 :goto_0

    :cond_e
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "biometrics_backup_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mBiometricsBackupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateMode:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->privateModeSummaryUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->mPrivateModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->removePreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->setLinkedDataView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/BiometricsAndSecuritySettings;->buildPreferenceForCOM()V

    return-void
.end method
