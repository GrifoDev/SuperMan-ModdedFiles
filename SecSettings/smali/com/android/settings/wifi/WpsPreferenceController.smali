.class public Lcom/android/settings/wifi/WpsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WpsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsPreferenceController$1;,
        Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;
    }
.end annotation


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mInSetupWizard:Z

.field private mIsAvailable:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPinPref:Landroid/support/v7/preference/SecPreference;

.field private mWpsPushPref:Landroid/support/v7/preference/SecPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WpsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WpsPreferenceController;->togglePreferences()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/app/FragmentManager;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsPreferenceController$1;-><init>(Lcom/android/settings/wifi/WpsPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mIsAvailable:Z

    iput-object p3, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    iput-boolean p5, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mInSetupWizard:Z

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private togglePreferences()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wps_push_button"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "wps_pin_entry"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mInSetupWizard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mIsAvailable:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPushPref:Landroid/support/v7/preference/SecPreference;

    new-instance v1, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "KTT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsPreferenceController;->togglePreferences()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mWpsPinPref:Landroid/support/v7/preference/SecPreference;

    new-instance v1, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method synthetic lambda$-com_android_settings_wifi_WpsPreferenceController_4038(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;-><init>(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    const v2, 0x7f121760

    const v3, 0x7f120a1c

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "wps_push_button"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$-com_android_settings_wifi_WpsPreferenceController_4642(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;

    invoke-direct {v0, v4}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;-><init>(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    const v2, 0x7f121760

    const v3, 0x7f120a1b

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "wps_pin_entry"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return v4
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
