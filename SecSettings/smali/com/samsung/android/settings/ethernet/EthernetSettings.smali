.class public Lcom/samsung/android/settings/ethernet/EthernetSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ethernet/EthernetSettings$1;
    }
.end annotation


# instance fields
.field private mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

.field private mEthConfigPref:Landroid/support/v7/preference/Preference;

.field private mEthDeviceStateReceiver:Landroid/database/ContentObserver;

.field private mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/ethernet/EthernetSettings;Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ethernet/EthernetSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ethernet/EthernetSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->removeDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings$1;-><init>(Lcom/samsung/android/settings/ethernet/EthernetSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initToggles()V
    .locals 5

    new-instance v2, Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v0, "ethernet"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    const-string/jumbo v1, "toggle_eth"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v4, "eth_config"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;-><init>(Landroid/content/Context;Landroid/net/EthernetManager;Landroid/support/v14/preference/SecSwitchPreference;Landroid/support/v7/preference/Preference;)V

    iput-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setConfigDialog(Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->setEthernetSettings(Lcom/samsung/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f150069

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "eth_config"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->initToggles()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigDialog:Lcom/samsung/android/settings/ethernet/EthernetConfigDialog;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->destroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->pause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthConfigPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "ethernet"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isEthConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1209b8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->showDialog(I)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthEnabler:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->resume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "eth_device_conn"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "EthernetSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ethernet/EthernetSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "eth_device_conn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetSettings;->mEthDeviceStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
