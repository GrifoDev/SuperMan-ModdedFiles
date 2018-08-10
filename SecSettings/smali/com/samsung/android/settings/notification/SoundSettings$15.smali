.class Lcom/samsung/android/settings/notification/SoundSettings$15;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SoundsModeSettings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "interval_sound_mode"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v10, "VibrateWhileRingingOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v10, "VibrateWhileRingingOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "Disable"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrateWhileRinging"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "VolumeSetting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "Volume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "volume_setting"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "VibrationIntensity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "vibration_feedback_intensity"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "Ringtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap7(Lcom/samsung/android/settings/notification/SoundSettings;)V

    :cond_e
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get14(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get14(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/DefaultRingtonePreference;->performClick()V

    goto :goto_1

    :cond_11
    const-string/jumbo v10, "Vibrationpattern"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "NotificationSounds"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get11(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/DefaultRingtonePreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DefaultNotificationSound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    const-string/jumbo v10, "DoNotDisturb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get21(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecSettingsSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v10, "TouchSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "TouchSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "TouchSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v10, "ScreenLockSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v10, "ScreenLockSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_22

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenlockSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v10, "ChargingSoundsOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_26
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v10, "ChargingSoundsOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "charging_sounds"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_28

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v6}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_29

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ChargingSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v10, "VibrationFeedbackOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2b

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2c
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v10, "VibrationFeedbackOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_2e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "VibrationFeedback "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2f
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v10, "DialingKeypadTonesOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_31

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_31
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_32

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_32
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v10, "DialingKeypadTonesOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_34

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_34
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_35

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DialingkeypadTones "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_35
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_36
    const-string/jumbo v10, "KeyboardSoundOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_37

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_37
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_38

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_38
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_39
    const-string/jumbo v10, "KeyboardSoundOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_3a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get9(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_3b

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardSounds "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3c
    const-string/jumbo v10, "KeyboardVibrationOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3d
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_3e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3f
    const-string/jumbo v10, "KeyboardVibrationOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "keyboard_vibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->bixbyScrollPreference(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_40

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_40
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get10(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_41

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "KeyboardVibration "

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_41
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_42
    const-string/jumbo v10, "SoundQualityAndEffects"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_43

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_43
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_44
    const-string/jumbo v10, "AddRingtone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10, v12}, Lcom/samsung/android/settings/notification/SoundSettings;->onMusicPickerChosen(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v10, 0x10000

    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "yes"

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_45
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_45

    const-string/jumbo v4, "yes"

    goto :goto_3

    :cond_46
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_47

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "DefaulStorage "

    const-string/jumbo v12, "AlreadySet"

    invoke-virtual {v10, v11, v12, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_47
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_48
    const-string/jumbo v10, "SeparatAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_49

    const-string/jumbo v10, "SeparateAppSound"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    :cond_49
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap2(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_4a

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_4a
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "multi_sound"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4b

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4b
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4c
    const-string/jumbo v10, "UseVolumeKeysForMediaOn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4e

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4d
    :goto_4
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4e
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_4d

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOn"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_4

    :cond_4f
    const-string/jumbo v10, "UseVolumeKeysForMediaOff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_51

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_50
    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_51
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_50

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "UseVolumeKeysForMedia"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_5

    :cond_52
    const-string/jumbo v10, "SetEmergencyTone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v11, "emergency_tone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_53

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_53
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_54

    const/4 v10, 0x2

    if-ne v10, v1, :cond_55

    :cond_54
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/SecDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v1, :cond_56

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_55
    if-eq v12, v1, :cond_54

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_56
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_57

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "EmergencyTone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SetEmergencyTone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "SoundsAndVibration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_57
    iget-object v10, p0, Lcom/samsung/android/settings/notification/SoundSettings$15;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/notification/SoundSettings;->-get6(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
