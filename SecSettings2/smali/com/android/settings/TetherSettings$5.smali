.class Lcom/android/settings/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TetheringSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived : stateId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothTethering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "HotspotSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get11(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get11(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "HotspotSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "mWifiApSettings is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "HotspotSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "USBTetheringOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "mUsbTether is checked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "USBTetheringOn is not enabled!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "mUsbTether is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "USBTetheringOff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "mUsbTether is not checked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "USBTetheringOn is not enabled!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v2, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/TetherSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "mUsbTether is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get6(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
