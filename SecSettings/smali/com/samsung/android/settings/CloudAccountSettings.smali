.class public Lcom/samsung/android/settings/CloudAccountSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CloudAccountSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/CloudAccountSettings$1;,
        Lcom/samsung/android/settings/CloudAccountSettings$2;,
        Lcom/samsung/android/settings/CloudAccountSettings$3;,
        Lcom/samsung/android/settings/CloudAccountSettings$4;,
        Lcom/samsung/android/settings/CloudAccountSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mUserPreference:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/CloudAccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/CloudAccountSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/CloudAccountSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/CloudAccountSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$1;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    new-instance v0, Lcom/samsung/android/settings/CloudAccountSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/CloudAccountSettings$4;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setLinkedDataView()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "flowId"

    const/16 v3, 0x233b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v2, 0x7f120fbf

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1edc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f150039

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "cloud_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceScreen;

    const v7, 0x7f1205ce

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isEnabledJanskyService(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "jansky_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "cloud_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v7, "smartswitch_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "cloud_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "my_profile_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "privacy_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "privacy_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "smartswitch_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->checkMyProfile(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "my_profile_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "account_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "account_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    const-string/jumbo v7, "user_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    const-string/jumbo v7, "CloudAccountSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cscfeature/mu_enabled/supportsMultipleUsers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    xor-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const-string/jumbo v7, "user_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string/jumbo v7, "privacy_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "privacy_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const-string/jumbo v7, "smartswitch_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    const-string/jumbo v7, "privacy_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    new-instance v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "desktopmode"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v7, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void

    :cond_a
    const-string/jumbo v7, "my_profile_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f12120e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "CloudAndAccounts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14

    const-string/jumbo v11, "cloud_preference"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    const-string/jumbo v11, "my_profile_preference"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/CloudAccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iget-object v11, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v11}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "com.sec.android.easyMover"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.sec.android.easyMover.Agent"

    const-string/jumbo v13, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v11, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "CloudAccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "easyMover resolveActivity is not null, start easyMover Agent, uri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v11

    return v11

    :cond_1
    :try_start_2
    const-string/jumbo v11, "samsungapps://ProductDetail/com.sec.android.easyMover"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-direct {v6, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    const/high16 v11, 0x10000000

    :try_start_3
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v11, 0x8000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "CloudAccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startMarket resolveActivity is not null, start market service, uri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_1
    const-string/jumbo v11, "CloudAccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "linkToMarket got an error, uri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "CloudAccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can not link to market, Exception e: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    :try_start_4
    const-string/jumbo v11, "CloudAccountSettings"

    const-string/jumbo v12, "null resolveActivity.try again via google play"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "market://details?id=com.sec.android.easyMover"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-direct {v7, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    const/high16 v11, 0x10000000

    :try_start_5
    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v11, 0x8000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v6, v7

    goto/16 :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.sec.android.easyMover"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v11, "CloudAccountSettings"

    const-string/jumbo v12, "not found activity"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_7
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10000000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_8

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.scloud"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v11, 0x7f1205cf

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const v12, 0x7f1208e1

    invoke-virtual {p0, v12, v11}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const v12, 0x7f1208e0

    invoke-virtual {p0, v12, v11}, Lcom/samsung/android/settings/CloudAccountSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/settings/CloudAccountSettings$5;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/CloudAccountSettings$5;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const v13, 0x7f1211a1

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/settings/CloudAccountSettings$6;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/CloudAccountSettings$6;-><init>(Lcom/samsung/android/settings/CloudAccountSettings;)V

    const/high16 v13, 0x1040000

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_2
    iget-object v11, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b011e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.scloud"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v11, "CloudAccountSettings"

    const-string/jumbo v12, "not found activity"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :try_start_9
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.scloud"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.scloud"

    const-string/jumbo v12, "com.samsung.android.scloud.app.ui.splash.SplashActivity"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/CloudAccountSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :cond_8
    if-eqz v9, :cond_0

    invoke-virtual {p1, v9}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b011c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    move-object v6, v7

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->setLinkedDataView()V

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/CloudAccountSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "CloudAndAccounts"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mSmartSwitch:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mUserPreference:Landroid/support/v7/preference/SecPreferenceScreen;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/settings/CloudAccountSettings;->mDexEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
