.class Lcom/samsung/android/settings/ConnectionsSettings$5;
.super Ljava/lang/Object;
.source "ConnectionsSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AirplaneMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get1(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get8(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "BluetoothSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get2(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "DeviceVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get3(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "DataUsage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "data_usage_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "MoreConnectionSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "wireless_settings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b
    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get6(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "MobileHotspotAndTethering"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get7(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v7/preference/SecRestrictedPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecRestrictedPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get5(Lcom/samsung/android/settings/ConnectionsSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "vzw_provision_volte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    const-string/jumbo v2, "vzw_provision_volte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ConnectionsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/ConnectionsSettings$5;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/ConnectionsSettings;->-get4(Lcom/samsung/android/settings/ConnectionsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
