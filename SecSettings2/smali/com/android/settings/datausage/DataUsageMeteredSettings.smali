.class public Lcom/android/settings/datausage/DataUsageMeteredSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageMeteredSettings$1;,
        Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageMeteredSettings;)Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageMeteredSettings$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/datausage/DataUsageMeteredSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$2;-><init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    new-instance v1, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "DataUsageMeteredSettings"

    const-string/jumbo v4, "updateNetworks() NullPointerException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
