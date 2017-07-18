.class public Lcom/android/settings/WifiCallingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/WifiCallingSettings$1;,
        Lcom/android/settings/WifiCallingSettings$2;
    }
.end annotation


# instance fields
.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    new-instance v0, Lcom/android/settings/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$1;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$2;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4

    const v0, 0x10400f3

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const v0, 0x10400f6

    goto :goto_0

    :pswitch_1
    const v0, 0x10400f5

    goto :goto_0

    :pswitch_2
    const v0, 0x10400f4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v5, "alertTitle"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "alertMessage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateButtonWfcMode(Landroid/content/Context;ZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/WifiCallingSettings;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0b1309

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f08014e

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "wifi_calling_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "carrier_config"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "editable_wfc_mode_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    const-string/jumbo v3, "carrier_wfc_supports_wifi_only_bool"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0c0128

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0c0129

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    :cond_0
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v4}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "alertShow"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method
