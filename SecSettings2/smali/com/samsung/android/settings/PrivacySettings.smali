.class public Lcom/samsung/android/settings/PrivacySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
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

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mManageData:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSamsungBackup:Landroid/preference/Preference;

.field private mSamsungBackupInActive:Landroid/preference/Preference;

.field private mSamsungRestore:Landroid/preference/Preference;

.field private mSamsungStorage:Landroid/preference/Preference;

.field private mSmartSwitch:Landroid/preference/Preference;

.field private mWaitingForConfirmationDialog:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sAutoRestart:Z

.field private switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

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

.method static synthetic -get4(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/PrivacySettings;Z)V
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

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mIsConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->sAutoRestart:Z

    iput-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    iput-boolean v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mWaitingForConfirmationDialog:Z

    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$1;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$2;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacySettings$3;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

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
    .locals 6

    const/4 v5, 0x0

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
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x1

    :try_start_2
    sput-boolean v2, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v5, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 20
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

    const-string/jumbo v17, "backup"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string/jumbo v18, "com.google.settings"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    if-nez v17, :cond_12

    const/16 v16, 0x1

    :goto_1
    if-eqz v16, :cond_0

    const-string/jumbo v17, "backup_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v16, :cond_1

    if-eqz v9, :cond_2

    :cond_1
    const-string/jumbo v17, "backup_inactive"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v16, :cond_13

    if-eqz v9, :cond_13

    :goto_2
    const-string/jumbo v17, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "factory_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v17, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "network_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v17, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string/jumbo v17, "settings_reset"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v7, 0x1

    :try_start_1
    const-string/jumbo v17, "com.carrieriq.tmobile.IQToggle"

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const/4 v8, 0x0

    :try_start_2
    const-string/jumbo v17, "com.tmobile.pr.mytmobile"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    const-string/jumbo v17, "PrivacySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", stringVerson = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", numVersion = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v17, 0x40666666    # 3.6f

    cmpl-float v17, v11, v17

    if-ltz v17, :cond_14

    const/16 v17, 0x1

    :goto_4
    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const-string/jumbo v17, "PrivacySettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "hasMyAccountEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-nez v7, :cond_6

    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v17, :cond_7

    :cond_6
    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    const-string/jumbo v17, "collect_diagnostics"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v17, :cond_9

    const-string/jumbo v17, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const-string/jumbo v17, "pref_backUp"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v17, "pref_restore"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v17, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_15

    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    const-string/jumbo v17, "pref_auto_clean"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v17, "setupwizard"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    const-string/jumbo v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v17

    if-eqz v17, :cond_e

    :cond_d
    const-string/jumbo v17, "category_smart_switch"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v17, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    :cond_f
    const-string/jumbo v17, "pref_storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v17

    if-nez v17, :cond_11

    const-string/jumbo v17, "pref_auto_power_on_off"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v17, "backup_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v17, "auto_restore"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string/jumbo v17, "configure_account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const/4 v7, 0x0

    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "Package not found : IQToggle"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v10

    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "NumberFormatException : MyAccount version"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_3
    move-exception v4

    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    const-string/jumbo v17, "PrivacySettings"

    const-string/jumbo v18, "NameNotFoundException : MyAccount"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_15
    const-string/jumbo v17, "samsung_backup_inactive"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
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

    const v3, 0x7f1002ae

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
.end method

.method private onRestoreClicked()V
    .locals 5

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

    const v3, 0x7f1002af

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

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b1723

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const-string/jumbo v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Check the feature for In-Cell model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
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

    const v2, 0x7f0b1726

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

    const v2, 0x7f0b1724

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

    const v2, 0x7f0b1725

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateAutoRestartSummary(Z)V
    .locals 2

    const v0, 0x7f0b19ca

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0b01d3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0b19cb

    goto :goto_2
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

    if-nez v13, :cond_4

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :goto_0
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v13, :cond_6

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_0
    :goto_1
    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/samsung/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-eqz v13, :cond_7

    :cond_1
    :goto_2
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
    :goto_3
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string/jumbo v14, "backup_auto_restore"

    invoke-static {v9, v14, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_a

    :goto_4
    invoke-virtual {v13, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "configIntent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    move v4, v1

    :goto_5
    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "configureEnabled : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    const-string/jumbo v11, "backup"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "manageIntent : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    move v6, v1

    :goto_6
    if-eqz v6, :cond_d

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_7
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-direct {p0, v13, v14, v12}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_2

    :cond_8
    :try_start_1
    iget-object v14, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_9

    const v13, 0x7f0b19ca

    :goto_8
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v5

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_9
    const v13, 0x7f0b19cb

    goto :goto_8

    :cond_a
    move v11, v12

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_c
    move v6, v12

    goto :goto_6

    :cond_d
    const-string/jumbo v11, "backup_category"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    iget-object v11, p0, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
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

    const v0, 0x7f0b189a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

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

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b143b

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

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
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

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
    .locals 24

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    return-void

    :cond_0
    const v22, 0x7f0800e0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v4, :cond_1

    const v22, 0x7f0b0427

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    const-string/jumbo v22, "backup"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string/jumbo v22, "backup_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string/jumbo v22, "factory_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/settingslib/RestrictedPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v22, "auto_restore"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v22, "configure_account"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v22, "data_management"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mManageData:Landroid/preference/PreferenceScreen;

    const-string/jumbo v22, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    const-string/jumbo v22, "pref_auto_clean"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    new-instance v23, Lcom/samsung/android/settings/PrivacySettings$4;

    invoke-direct/range {v23 .. v24}, Lcom/samsung/android/settings/PrivacySettings$4;-><init>(Lcom/samsung/android/settings/PrivacySettings;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v22, "pref_smartswitch"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v22

    if-eqz v22, :cond_3

    const-string/jumbo v22, "category_smart_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v18

    invoke-static {}, Lcom/samsung/android/settings/PrivacySettings;->isSupportAutoPowerOnOff()Z

    move-result v8

    if-eqz v18, :cond_4

    const-string/jumbo v22, "PrivacySettings"

    const-string/jumbo v23, "Auto reset not support model"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_4
    if-nez v8, :cond_5

    const-string/jumbo v22, "pref_auto_power_on_off"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v11, v15, v1}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_5
    if-eqz v18, :cond_6

    if-eqz v8, :cond_8

    :cond_6
    :goto_0
    const-string/jumbo v22, "category_samsungservices"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bba

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v22, "pref_backUp"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v22, "pref_restore"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v22, "pref_storage"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v22, "samsung_backup_inactive"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v22, "collect_diagnostics"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/samsung/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    :goto_1
    if-ltz v7, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v15, v1, v2}, Lcom/samsung/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, v14, Landroid/preference/PreferenceCategory;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object v13, v14

    check-cast v13, Landroid/preference/PreferenceCategory;

    invoke-virtual {v13}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v21

    add-int/lit8 v9, v21, -0x1

    :goto_2
    if-ltz v9, :cond_7

    invoke-virtual {v13, v9}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string/jumbo v22, "menu"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_c

    const-string/jumbo v22, "backup"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const-string/jumbo v22, "category_restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v22, "personal_data_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v22, "collect_diagnostics"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/PrivacySettings;->removePreference(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const v22, 0x7f0b0a89

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

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

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

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

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 10

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_1

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isBackupAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eq v0, v9, :cond_0

    if-ne v0, v5, :cond_7

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v8, "isFactoryResetAllowed"

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/settings/PrivacySettings;->mFactoryReset:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eq v1, v9, :cond_2

    if-ne v1, v5, :cond_8

    :cond_2
    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/PrivacySettings;->updateToggles()V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "sec_silent_auto_reset"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v5

    :goto_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/PrivacySettings;->updateAutoRestartSummary(Z)V

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings;->mBackup:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacySettings;->switchChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    return-void

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    move v4, v6

    goto :goto_1

    :cond_9
    move v3, v6

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

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method
