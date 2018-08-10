.class public Lcom/samsung/android/settings/DeviceMaintenanceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceMaintenanceSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mBatteryPref:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mMemoryPref:Landroid/support/v7/preference/PreferenceScreen;

.field private mPerformancePref:Landroid/support/v7/preference/PreferenceScreen;

.field private mStoragePref:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mBatteryPref:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mMemoryPref:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mPerformancePref:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mStoragePref:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;-><init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f150056

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "battery_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mBatteryPref:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "performance_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mPerformancePref:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mStoragePref:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "memory_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mMemoryPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "performance_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceMaintenance"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DeviceMaintenance"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
