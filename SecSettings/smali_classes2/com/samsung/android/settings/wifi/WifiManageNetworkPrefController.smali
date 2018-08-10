.class public Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiManageNetworkPrefController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsAvailable:Z

.field private mManageNetwork:Landroid/support/v7/preference/SecPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->togglePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFilter:Landroid/content/IntentFilter;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p4, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private togglePreferences()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_manage_network"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_manage_network"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const/4 v5, 0x0

    const v4, 0x7f12204b

    const/4 v11, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_manage_network"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "manage_network"

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFragment:Landroid/app/Fragment;

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFragment:Landroid/app/Fragment;

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f121760

    const v2, 0x7f120a0c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    return v11

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFragment:Landroid/app/Fragment;

    check-cast v5, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFragment:Landroid/app/Fragment;

    const-class v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    return v7
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->togglePreferences()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->mManageNetwork:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
