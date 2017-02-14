.class public Lcom/samsung/android/settings/GeneralDeviceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
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
.field private mBatterySettingsPref:Landroid/preference/PreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mDiagnosticInfo:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMemorySettingsPref:Landroid/preference/PreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mStorageSettingsPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V
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

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$1;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$4;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
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


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$AccountSettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f0b101a

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

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

    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f0b0a7b

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f0b1676

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f080077

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :goto_0
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "samsung_errorlog_agree"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/GeneralDeviceSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$5;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "reset_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v6, "com.sec.android.app.setupwizard"

    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v6, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "diagnostic_terms_vzw"

    const-string/jumbo v10, "string"

    invoke-virtual {v4, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v9, "CscFeature_Common_SupportSamsungAdId"

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_a
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "support"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    new-instance v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_c
    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v7, v8

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting resource"

    invoke-static {v7, v9, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting activity of create package context"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "GeneralManagement"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

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
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

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

    const v10, 0x7f1002f9

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
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "GeneralManagement"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 13

    const/4 v0, 0x0

    const/4 v7, 0x0

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v9, "com.sec.android.app.setupwizard"

    const-string/jumbo v4, "com.sec.android.app.SecSetupWizard"

    if-eqz v6, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "diagnostic_terms_vzw"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error log collection disclaimer is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    :goto_2
    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "error_log_collection_k_serviceinfo"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting Resource"

    invoke-static {v10, v11, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
