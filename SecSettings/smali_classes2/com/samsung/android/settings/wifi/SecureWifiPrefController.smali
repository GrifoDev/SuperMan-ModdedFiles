.class public Lcom/samsung/android/settings/wifi/SecureWifiPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "SecureWifiPrefController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mInSetupWizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsAvailable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureWifi:Landroid/support/v7/preference/SecPreference;

.field private mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->togglePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mInSetupWizard:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/SecureWifiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private setSecureWifiSummary()V
    .locals 5

    const v4, 0x7f1217f5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getSecureWifiMode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getSecureWifiTermsAndConditionsAgreed()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    const v4, 0x7f1217f7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private togglePreferences()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "secure_wifi"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.fast.ACTION_SECURE_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.fast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mInSetupWizard:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSecureWifiSummary()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportSecureWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_SECURE_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "secure_wifi"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "secure_wifi"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getAdvancedSettingsScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifiManager:Lcom/samsung/android/settings/wifi/SecureWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->getAdvancedSettingsSwifiEventId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/SecureWifiManager;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "SecureWiFi"

    const-string/jumbo v2, "Can\'t start Secure Wi-Fi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v3
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->togglePreferences()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->mSecureWifi:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->setSecureWifiSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->togglePreferences()V

    :cond_0
    return-void
.end method
