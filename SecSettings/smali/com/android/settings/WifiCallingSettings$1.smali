.class Lcom/android/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 12

    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v3

    :goto_0
    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v9, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v10, "carrier_config"

    invoke-virtual {v0, v10}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v10, "editable_wfc_mode_bool"

    invoke-virtual {v1, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v10, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v1, v10}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_0
    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "wifi_calling_mode"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-nez p1, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v10, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v10}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "wifi_calling_roaming_mode"

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    if-nez p1, :cond_7

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v8, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method
