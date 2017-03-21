.class public Lcom/samsung/android/settings/PrivacyResetSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PrivacyResetSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/PrivacyResetSettings$1;,
        Lcom/samsung/android/settings/PrivacyResetSettings$2;,
        Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnabled:Z

.field private mFactoryReset:Landroid/preference/PreferenceScreen;

.field private mResetSettings:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/PrivacyResetSettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/PrivacyResetSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/PrivacyResetSettings;->updateAutoRestartSummary(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/PrivacyResetSettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/PrivacyResetSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$1;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/settings/PrivacyResetSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$2;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
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
    const-string/jumbo v1, "PrivacyResetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 13
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

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "settings_reset"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    const-string/jumbo v11, "no_network_reset"

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "network_reset"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    const-string/jumbo v11, "no_factory_reset"

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "factory_reset"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "pref_auto_power_on_off"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "pref_auto_clean"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v9, "com.carrieriq.tmobile.IQToggle"

    const/16 v11, 0x80

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v9, "com.tmobile.pr.mytmobile"

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, 0x3

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string/jumbo v9, "PrivacyResetSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isSkipMyAccount: rawVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", stringVerson = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", numVersion = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v9, 0x40666666    # 3.6f

    cmpl-float v9, v4, v9

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    sput-boolean v9, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const-string/jumbo v9, "PrivacyResetSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "hasMyAccountEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-nez v1, :cond_5

    sget-boolean v9, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    if-eqz v9, :cond_7

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v11, "Package not found : IQToggle"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v9, v10

    goto :goto_1

    :catch_1
    move-exception v3

    sput-boolean v10, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v10, "NumberFormatException : MyAccount version"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    sput-boolean v10, Lcom/samsung/android/settings/PrivacyResetSettings;->hasCorrectMyAccount:Z

    const-string/jumbo v9, "PrivacyResetSettings"

    const-string/jumbo v10, "NameNotFoundException : MyAccount"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string/jumbo v9, "collect_diagnostics"

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3
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

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/PrivacyResetSettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

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

    const v0, 0x7f0b18af

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0b01d2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0b18b0

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserHandle;->isOwner()Z

    move-result v13

    iput-boolean v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEnabled:Z

    iget-boolean v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEnabled:Z

    if-nez v13, :cond_0

    return-void

    :cond_0
    const v13, 0x7f0800c4

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string/jumbo v13, "settings_reset"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    const-string/jumbo v13, "factory_reset"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Landroid/preference/PreferenceScreen;

    const-string/jumbo v13, "collect_diagnostics"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v13, "category_restart"

    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    const-string/jumbo v13, "pref_auto_clean"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v14, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v14, Lcom/samsung/android/settings/PrivacyResetSettings$3;

    invoke-direct {v14, p0}, Lcom/samsung/android/settings/PrivacyResetSettings$3;-><init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v10

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->isSupportAutoPowerOnOff()Z

    move-result v1

    if-eqz v10, :cond_1

    const-string/jumbo v13, "PrivacyResetSettings"

    const-string/jumbo v14, "Auto reset not support model"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-direct {p0, v13, v7, v14}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v13, "pref_auto_power_on_off"

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    const/4 v13, 0x0

    invoke-direct {p0, v4, v7, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_2
    if-eqz v10, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/samsung/android/settings/PrivacyResetSettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_1
    if-ltz v0, :cond_8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    invoke-direct {p0, v7, v8, v13}, Lcom/samsung/android/settings/PrivacyResetSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_0

    :cond_6
    instance-of v13, v6, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_4

    move-object v5, v6

    check-cast v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_8
    new-instance v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v13, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Reset"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_0

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
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v6, "isFactoryResetAllowed"

    invoke-static {v2, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mFactoryReset:Landroid/preference/PreferenceScreen;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_3

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mSamsungAutoClean:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "sec_silent_auto_reset"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/PrivacyResetSettings;->updateAutoRestartSummary(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/PrivacyResetSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "Reset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method
