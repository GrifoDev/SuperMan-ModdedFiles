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
        Lcom/android/settings/WifiCallingSettings$2;,
        Lcom/android/settings/WifiCallingSettings$3;
    }
.end annotation


# instance fields
.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateAddress:Landroid/support/v7/preference/Preference;

.field private final mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    iput-boolean v1, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    new-instance v0, Lcom/android/settings/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$1;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$2;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/WifiCallingSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/WifiCallingSettings$3;-><init>(Lcom/android/settings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x0

    const-class v5, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierConfigManager;

    if-nez v3, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {v3}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v6

    :cond_1
    const-string/jumbo v5, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v6

    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v6

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v4
.end method

.method public static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4

    const v0, 0x1040b52

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
    const v0, 0x1040b1d

    goto :goto_0

    :pswitch_1
    const v0, 0x1040b1c

    goto :goto_0

    :pswitch_2
    const v0, 0x1040b1e

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

.method private updateButtonWfcMode(Landroid/content/Context;ZII)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    :goto_0
    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    :cond_0
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p1}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz p2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_4
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateWfcMode(Landroid/content/Context;Z)V
    .locals 6

    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWfcMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZII)V

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/WifiCallingSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
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

    const v2, 0x7f121fad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v4, :cond_0

    const-string/jumbo v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WFC emergency address activity result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, v0, v4}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f030139

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f15013f

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "wifi_calling_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "wifi_calling_roaming_mode"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v3, "emergency_address_key"

    invoke-virtual {p0, v3}, Lcom/android/settings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/WifiCallingSettings;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

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

    const-string/jumbo v3, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    const-string/jumbo v3, "carrier_wfc_supports_wifi_only_bool"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f030137

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f030136

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

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
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v5, :cond_2

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v7}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v1, v0, v7}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/settings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/WifiCallingSettings;->mEditableWfcRoamingMode:Z

    if-nez v5, :cond_1

    invoke-static {v1, v8}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-static {v1, v0, v8}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    :cond_1
    :goto_0
    return v8

    :cond_2
    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v5, :cond_1

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v8}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-static {v1, v0, v8}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;IZ)V

    iget-object v5, p0, Lcom/android/settings/WifiCallingSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    :goto_0
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {v0, v8}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v4

    invoke-static {v0, v9}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/settings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZII)V

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v9, p0, Lcom/android/settings/WifiCallingSettings;->mValidListener:Z

    :cond_0
    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/settings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "alertShow"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "WifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSwitchChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0, v1, v5}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/settings/WifiCallingSettings;->getCarrierActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/WifiCallingSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v6}, Lcom/android/settings/WifiCallingSettings;->updateWfcMode(Landroid/content/Context;Z)V

    goto :goto_0
.end method
