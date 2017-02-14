.class Lcom/samsung/android/settings/notification/SoundSettings$14;
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

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SoundMode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Sound mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    const-string/jumbo v5, "Mute"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "Match"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v5, "Vibrate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "Sound"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    rsub-int/lit8 v0, v1, 0x2

    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    if-ne v1, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "AlreadySelected"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/notification/SoundSettings;->-get1()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    const-string/jumbo v7, "AlreadySelected"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/notification/SoundSettings;->-get15(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/SecDropDownPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/SecDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "VibrateWhileRingingOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "VibrateWhileRingingOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get18(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "VolumeSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "volume_setting"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "Vibrationintensity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "vibration_feedback_intensity"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v5, "Ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get12(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/DefaultRingtonePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v5, "Vibrationpattern"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get3(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v5, "NotificationSounds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get16(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v5, "DoNotDisturb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get20(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v5, "TouchSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v5, "TouchSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get17(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TouchSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v5, "ScreenLockSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_20
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_21
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v5, "ScreenLockSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_23
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get13(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ScreenlockSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_24
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v5, "ChargingSoundsOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "charging_sounds"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_26
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_28
    const-string/jumbo v5, "ChargingSoundsOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    const-string/jumbo v6, "charging_sounds"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_29
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "ChargingSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v5, "VibrationFeedbackOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v5, "VibrationFeedbackOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2f

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get19(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "VibrationFeedback "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_30
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_31
    const-string/jumbo v5, "DialingKeypadTonesOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_32
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_33
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_34
    const-string/jumbo v5, "DialingKeypadTonesOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_35
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get4(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "DialingkeypadTones "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_36
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_37
    const-string/jumbo v5, "KeyboardSoundOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_38
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_39
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v5, "KeyboardSoundOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_3b
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get7(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardSounds "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3c
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_3d
    const-string/jumbo v5, "KeyboardVibrationOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_3e
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3f
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_40
    const-string/jumbo v5, "KeyboardVibrationOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_41
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get8(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "KeyboardVibration "

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "SoundsAndVibration"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_42
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_43
    const-string/jumbo v5, "SoundQualityAndEffects"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get14(Lcom/samsung/android/settings/notification/SoundSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_44
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SoundSettings$14;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SoundSettings;->-get5(Lcom/samsung/android/settings/notification/SoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
