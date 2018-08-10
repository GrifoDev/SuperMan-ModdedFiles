.class public Lcom/samsung/android/settings/wifi/PasspointPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "PasspointPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;
    }
.end annotation


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSetupWizard:Z

.field private mIsWifiEnabled:Z

.field private mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsWifiEnabled:Z

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsSetupWizard:Z

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private setSummary()V
    .locals 3

    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f12202e

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f12202f

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v3, "wifi_hs20_enable"

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsSetupWizard:Z

    if-nez v3, :cond_3

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_MENU_HOTSPOT20:Ljava/lang/String;

    const-string/jumbo v2, "DEFAULT_ON,MENU_OFF"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_hotspot20_connected_history"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "MENU_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "MENU_ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_hs20_enable"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_hotspot20_enable"

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    int-to-long v6, v2

    const v2, 0x7f121760

    const v8, 0x7f120a15

    invoke-virtual {v5, v2, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ConfigureWifiSettings"

    const-string/jumbo v3, "onPreferenceChange, NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public onResume()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mPasspointPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_hotspot20_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->setSummary()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
