.class public Lcom/samsung/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/PrivacySettings$1;,
        Lcom/samsung/android/settings/PrivacySettings$2;,
        Lcom/samsung/android/settings/PrivacySettings$3;,
        Lcom/samsung/android/settings/PrivacySettings$4;,
        Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z

.field private static mIsSamsungBackupEnabled:Z

.field private static mIsSamsungStorageEnabled:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

.field private mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mResetSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSamsungBackup:Landroid/support/v7/preference/SecPreference;

.field private mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

.field private mSamsungRestore:Landroid/support/v7/preference/SecPreference;

.field private mSamsungStorage:Landroid/support/v7/preference/SecPreference;

.field private mSmartSwitch:Landroid/support/v7/preference/SecPreference;

.field private mWaitingForConfirmationDialog:Z

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private sAutoRestart:Z

.field private switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/PrivacySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/PrivacySettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    sput-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->sAutoRestart:Z

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$1;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$2;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$3;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$4;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addSamsungAccount()V
    .locals 8

    iget-object v6, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_0

    const-string/jumbo v0, "tj9u972o46"

    const-string/jumbo v1, "D234AE3C42F092D4334433173AE9E264"

    const-string/jumbo v4, "com.samsung.android.scloud"

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "client_id"

    const-string/jumbo v7, "tj9u972o46"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "client_secret"

    const-string/jumbo v7, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "mypackage"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "OSP_VER"

    const-string/jumbo v7, "OSP_02"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "MODE"

    const-string/jumbo v7, "ADD_ACCOUNT"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x3e9

    :try_start_0
    invoke-virtual {p0, v3, v6}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PrivacySettings"

    const-string/jumbo v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DisablingSamsungBackup"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDisableSamsungCloudMenu(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->checkSamsungCloudEnabler(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v6, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v14, "backup"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v1, v14}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v15, "com.google.settings"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    if-nez v14, :cond_10

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_0

    const-string/jumbo v14, "backup_category"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v13, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    const-string/jumbo v14, "backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v13, :cond_3

    xor-int/lit8 v14, v6, 0x1

    if-eqz v14, :cond_4

    :cond_3
    const-string/jumbo v14, "backup_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "auto_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "configure_account"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v4, 0x1

    :try_start_1
    const-string/jumbo v14, "com.carrieriq.tmobile.IQToggle"

    const/16 v15, 0x80

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v5, 0x0

    :try_start_2
    const-string/jumbo v14, "com.tmobile.pr.mytmobile"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const-string/jumbo v14, "PrivacySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", stringVerson = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", numVersion = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v14, 0x40666666    # 3.6f

    cmpl-float v14, v8, v14

    if-ltz v14, :cond_11

    const/4 v14, 0x1

    :goto_3
    sput-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v14, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const-string/jumbo v14, "PrivacySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "hasMyAccountEnabled: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    if-nez v4, :cond_5

    sget-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_6

    :cond_5
    xor-int/lit8 v14, v5, 0x1

    if-nez v14, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    const-string/jumbo v14, "collect_diagnostics"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    sget-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v14, :cond_8

    const-string/jumbo v14, "pref_backUp"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v14, "pref_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v14, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_a

    :cond_9
    const-string/jumbo v14, "samsung_backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_b
    const-string/jumbo v14, "pref_auto_clean"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v14, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    const-string/jumbo v14, "pref_storage"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v14

    if-nez v14, :cond_f

    const-string/jumbo v14, "pref_auto_power_on_off"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v14, "PrivacySettings"

    const-string/jumbo v15, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const/4 v4, 0x0

    const-string/jumbo v14, "PrivacySettings"

    const-string/jumbo v15, "Package not found : IQToggle"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v7

    const/4 v14, 0x0

    sput-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string/jumbo v14, "PrivacySettings"

    const-string/jumbo v15, "NumberFormatException : MyAccount version"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_3
    move-exception v2

    const/4 v14, 0x0

    sput-boolean v14, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string/jumbo v14, "PrivacySettings"

    const-string/jumbo v15, "NameNotFoundException : MyAccount"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    return v6
.end method

.method private static isSupportAutoPowerOnOff()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_POWER_ON_OFF"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onBackUpClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.scloud"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    goto :goto_0
.end method

.method private onRestoreClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.scloud"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud"

    const-string/jumbo v4, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.scloud.backup.START_RESTORE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showDownloadSamsungCloudDialog()V

    goto :goto_0
.end method

.method private onStorageClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const-string/jumbo v4, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->samsungAccountExists()Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private samsungAccountExists()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private setBackupEnabled(Z)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    if-eq v1, p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PrivacySettings"

    const-string/jumbo v3, "Error communicating with BackupManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    const v1, 0x7f1202ef

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDownloadSamsungCloudDialog()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v4, 0x7f1205cf

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208e1

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const v5, 0x7f1208e0

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/PrivacySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$6;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const v6, 0x7f1211a1

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/PrivacySettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/PrivacySettings$7;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private showEraseBackupDialog()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_full_data_backup_aware"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c5b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1202f5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateAutoRestartSummary(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f121b3e

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1202a0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f12029f

    goto :goto_1
.end method

.method private updateToggles()V
    .locals 15

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_5

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :goto_0
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v13, :cond_7

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_0
    :goto_1
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_1
    :try_start_0
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v10

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "config"

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v14, "management"

    invoke-direct {p0, v13, v14}, Lcom/samsung/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v13, v10}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v14, "backup_auto_restore"

    invoke-static {v9, v14, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_a

    :goto_3
    invoke-virtual {v13, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v11, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const-string/jumbo v11, "backup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "configIntent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    move v4, v1

    :goto_4
    const-string/jumbo v11, "backup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "configureEnabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    const-string/jumbo v11, "backup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "manageIntent : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    move v6, v1

    :goto_5
    const-string/jumbo v11, "backup_category"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v6, :cond_d

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v11, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_6
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_9

    const v13, 0x7f121b3e

    :goto_7
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v5

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    const v13, 0x7f121b3d

    goto :goto_7

    :cond_a
    move v11, v12

    goto/16 :goto_3

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    if-eqz v0, :cond_4

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    const-string/jumbo v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fails to resolve; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120cf9

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const v4, 0x7f12110e

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "PrivacySettings"

    const-string/jumbo v1, "Samsung Account Login : other reasons"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    return-void

    :cond_0
    const v20, 0x7f1500d9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v3, :cond_1

    const v20, 0x7f1205ff

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string/jumbo v20, "backup"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string/jumbo v20, "backup_data"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string/jumbo v20, "settings_reset"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v20, "network_reset"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v20, "factory_reset"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v20, "auto_restore"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v20, "configure_account"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v20, "data_management"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v20, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v20

    if-eqz v20, :cond_7

    const v20, 0x7f12029e

    :goto_0
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    const-string/jumbo v20, "pref_auto_clean"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/settings/PrivacySettings$5;

    invoke-direct/range {v21 .. v22}, Lcom/samsung/android/settings/PrivacySettings$5;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v17

    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v7

    if-eqz v17, :cond_3

    const-string/jumbo v20, "PrivacySettings"

    const-string/jumbo v21, "Auto reset not support model"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_3
    if-nez v7, :cond_4

    const-string/jumbo v20, "pref_auto_power_on_off"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v10, v14, v1}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_4
    if-eqz v17, :cond_5

    xor-int/lit8 v20, v7, 0x1

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v15, v1}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    :cond_5
    const-string/jumbo v20, "category_samsungservices"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const v21, 0x7f1216a7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v20, "pref_backUp"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v20, "pref_restore"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v20, "pref_storage"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v20, "samsung_backup_inactive"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v20, "collect_diagnostics"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v16

    add-int/lit8 v6, v16, -0x1

    :goto_1
    if-ltz v6, :cond_a

    invoke-virtual {v15, v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v15, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    const v20, 0x7f12029d

    goto/16 :goto_0

    :cond_8
    instance-of v0, v13, Landroid/support/v7/preference/PreferenceCategory;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object v12, v13

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_2
    if-ltz v8, :cond_6

    invoke-virtual {v12, v8}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string/jumbo v20, "menu"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_b

    const-string/jumbo v20, "backup"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string/jumbo v20, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v20, "personal_data_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v20, "collect_diagnostics"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    const v20, 0x7f12169f

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    new-instance v20, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BackupAndReset"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "jp.softbank.mb.passwordmanager"

    const-string/jumbo v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "FuncCode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "ResultString"

    const-string/jumbo v3, "fghigklmn087"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "configure_account"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 13

    const/4 v12, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_3

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v11, "isBackupAllowed"

    invoke-static {v7, v10, v11, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v10, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eq v0, v12, :cond_2

    if-ne v0, v8, :cond_d

    :cond_2
    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    const-string/jumbo v10, "no_factory_reset"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v11, "isFactoryResetAllowed"

    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v12, :cond_4

    if-ne v4, v8, :cond_e

    :cond_4
    :goto_1
    if-nez v8, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mResetSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mNetworkRest:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_9
    iget-boolean v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sec_silent_auto_reset"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/PrivacySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v10, "BackupAndReset"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_d
    move v7, v9

    goto/16 :goto_0

    :cond_e
    move v8, v9

    goto :goto_1

    :cond_f
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
