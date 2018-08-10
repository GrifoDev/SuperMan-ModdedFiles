.class public Lcom/samsung/android/settings/GeneralDeviceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GeneralDeviceSettings$1;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$2;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$3;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$4;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mDateTimePref:Landroid/support/v7/preference/SecPreference;

.field private mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GeneralDeviceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setAttIqiDiagnostic(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$1;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$4;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private setAttIqiDiagnostic(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "att_iqi_report_diagnostic"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDiagnostic(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setLinkedDataView()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v4, :cond_5

    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$UserAndAccountDashboardActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "flowId"

    const/16 v5, 0x233e

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f1200bb

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_1
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "menu"

    const-string/jumbo v5, "backup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "flowId"

    const/16 v5, 0x233f

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f12169f

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_2
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "flowId"

    const/16 v5, 0x2340

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f120742

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x12d4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    const v10, 0x7f150073

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_10

    const-string/jumbo v10, "battery_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v10, "storage_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v10, "memory_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :goto_0
    const-string/jumbo v10, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "samsung_errorlog_agree"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/GeneralDeviceSettings$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$5;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v10, "att_iqi_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "att_iqi_report_diagnostic"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v10, 0x1

    if-ne v5, v10, :cond_12

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mAttIqiDiagnosticInfo:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v11, Lcom/samsung/android/settings/GeneralDeviceSettings$6;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$6;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "reset_category"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "reset_preference"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v9, "com.sec.android.app.setupwizard"

    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "diagnostic_data_version"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "diagnostic_terms_vzw"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "diagnostic_terms_vzw_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "string"

    invoke-virtual {v6, v8, v11, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_4
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const-string/jumbo v10, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    const-string/jumbo v10, "device_info_contact_us"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->shouldShowIqiOptinMenuItem()Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "Removed opt in/out menu option"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "att_iqi_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_SupportSamsungAdId"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_b

    const-string/jumbo v10, "samsung_ad_id"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Disable"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    const-string/jumbo v10, "marketing_information"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v10, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "device_info_contact_us"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "samsung_ad_id"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "marketing_information"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "support"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v10, "device_info_date_time_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreference;

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isAvailableNewTimeZone(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    const v11, 0x7f0d022e

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    :cond_f
    :goto_4
    new-instance v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_10
    const-string/jumbo v10, "battery_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "storage_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v10, "memory_settings"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting resource"

    invoke-static {v10, v11, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v10, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception v3

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v10, v11, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v10, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "GeneralManagement"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "memory_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is clicked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v0, 0x0

    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_BATTERY"

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v8

    return v8

    :cond_2
    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_STORAGE"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_RAM"

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start sm not available : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "device_info_contact_us"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Contact us is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b026c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Activity Not Found"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "marketing_information"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.osp.app.signin"

    const-string/jumbo v9, "com.osp.app.signin.ReceiveMarketingActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information launch error"

    invoke-static {v8, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setLinkedDataView()V

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "GeneralManagement"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 15

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "VZW"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v7, 0x1

    :goto_0
    const-string/jumbo v11, "com.sec.android.app.setupwizard"

    const-string/jumbo v5, "com.sec.android.app.SecSetupWizard"

    if-eqz v7, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "diagnostic_data_version"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "diagnostic_terms_vzw"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "diagnostic_terms_vzw_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v11, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "string"

    invoke-virtual {v8, v10, v13, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error log collection disclaimer is null"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    :goto_2
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v5, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string/jumbo v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "error_log_collection_k_serviceinfo"

    const-string/jumbo v14, "string"

    invoke-virtual {v8, v13, v14, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error getting Resource"

    invoke-static {v12, v13, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v12, "GeneralDeviceSettings"

    const-string/jumbo v13, "error getting activity of create package context"

    invoke-static {v12, v13, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
