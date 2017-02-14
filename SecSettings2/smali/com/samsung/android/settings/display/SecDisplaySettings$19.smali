.class Lcom/samsung/android/settings/display/SecDisplaySettings$19;
.super Ljava/lang/Object;
.source "SecDisplaySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    const/16 v13, 0x6d

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "DisplayBrightnessLevel"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessUp"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessDown"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessMax"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessMin"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessAutoOn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "DisplayBrightnessAutoOff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v12, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get2(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/os/Handler;

    move-result-object v10

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const-string/jumbo v10, "BlueLightFilter"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v10, "DisplayBlueLightFilterOn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BlueLightFilter"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BlueLightFilter"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "DisplayBlueLightFilterOff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get3(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/DisplayDisabledAppearanceSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BlueLightFilter"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "BlueLightFilter"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "Font"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get8(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "ContentScaling"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get5(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "ScreenResolution"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get15(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v10, "ScreenMode"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v10, "EasyMode"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v10, "IconFrames"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get9(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v10, "StatusBar"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get21(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v10, "ScreenTimeout"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/settings/TimeoutListPreference;->getOrder()I

    move-result v11

    invoke-virtual {v10, v11, v12}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v10, "ScreenTimeoutApply"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_14
    :goto_1
    if-nez v4, :cond_17

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Object"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenTimeout"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string/jumbo v10, ", "

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x68

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x73

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v6, v10, v12

    const-string/jumbo v10, "SecDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "timeout : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v0, 0x0

    :goto_2
    array-length v10, v9

    if-ge v0, v10, :cond_14

    aget-object v10, v9, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-nez v10, :cond_16

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Object"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenTimeout"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get17(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Object"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenTimeout"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v10, "KeepScreenTurnedOffOn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenOff"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenOff"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v10, "KeepScreenTurnedOffOff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_1e

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get14(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "ScreenOff"

    const-string/jumbo v12, "AlreadyOff"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v10, "Screensaver"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/SettingsSwitchPreference;->getOrder()I

    move-result v11

    invoke-virtual {v10, v11, v12}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v10, "ScreensaverOn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_24
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v10, "ScreensaverOff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_26

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get16(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/SettingsSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsSwitchPreference;->performClick()V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_27

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Screensaver"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_28
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v10, "LEDIndicatorOn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_2a

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "LED"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2b

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "LED"

    const-string/jumbo v12, "AlreadyON"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2b
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v10, "LEDIndicatorOff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_2d

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "LED"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "Yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get19(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "LED"

    const-string/jumbo v12, "AlreadyOFF"

    const-string/jumbo v13, "No"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    const-string/jumbo v11, "Display"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e
    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_2f
    const-string/jumbo v10, "EdgeScreen"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    const-string/jumbo v11, "edge_screen"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-virtual {v11}, Lcom/samsung/android/settings/display/SecDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$19;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v10}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get7(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
