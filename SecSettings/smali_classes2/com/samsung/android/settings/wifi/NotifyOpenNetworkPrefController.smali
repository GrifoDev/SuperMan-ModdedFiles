.class public Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "NotifyOpenNetworkPrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsAvailable:Z

.field private mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mIsAvailable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private modifyPreferences()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_networks_available_notification_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "notify_open_networks"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mIsAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f122078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f122077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_networks_available_notification_on"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mIsAvailable:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "notify_open_networks"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "notify_open_networks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mNotifyOpenNetworks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string/jumbo v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_networks_available_notification_on"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v5

    if-ne v0, v4, :cond_0

    move v3, v4

    :cond_0
    int-to-long v6, v3

    const v3, 0x7f121760

    const v8, 0x7f120a1a

    invoke-virtual {v5, v3, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/NotifyOpenNetworkPrefController;->modifyPreferences()V

    return-void
.end method
