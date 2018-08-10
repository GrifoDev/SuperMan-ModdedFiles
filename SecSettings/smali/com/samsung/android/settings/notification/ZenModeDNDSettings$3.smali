.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "DoNotDisturbOn"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DND"

    const-string/jumbo v23, "AlreadyON"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DND"

    const-string/jumbo v23, "AlreadyON"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v21, "DoNotDisturbOff"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v21

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DND"

    const-string/jumbo v23, "AlreadyOFF"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get5(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DND"

    const-string/jumbo v23, "AlreadyOFF"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v21, "DoNotDisturbScheduledOn"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOn"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOn"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v21, "DoNotDisturbScheduledOff"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/SecSettingsSwitchPreference;->isChecked()Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOff"

    const-string/jumbo v24, "yes"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get7(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/AutomaticZenRule;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DNDSchedule"

    const-string/jumbo v23, "AlreadyOff"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v21, "DoNotdisturbSchedule"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "HH:MM"

    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/4 v8, 0x0

    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v15, v0, [I

    const/4 v9, 0x0

    :goto_1
    :try_start_0
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_d

    aget-object v21, v14, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    aput v21, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_d
    const/4 v11, 0x1

    if-eqz v17, :cond_e

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    const-string/jumbo v21, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMinutes(I)V

    :cond_e
    if-eqz v6, :cond_f

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    const/16 v21, 0x1

    aget-object v21, v7, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/Date;->setMinutes(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get8(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 v9, 0x0

    :goto_3
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_13

    if-eqz v3, :cond_10

    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v9, :cond_12

    :cond_10
    const/4 v10, 0x0

    :cond_11
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_12
    aget v21, v15, v9

    aget v22, v3, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    const/4 v10, 0x0

    goto :goto_4

    :cond_13
    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Days"

    const-string/jumbo v23, "Exist"

    const-string/jumbo v24, "no"

    invoke-virtual/range {v21 .. v24}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    if-eqz v19, :cond_15

    if-nez v8, :cond_0

    :cond_15
    const-string/jumbo v12, "EndTime"

    if-nez v19, :cond_16

    const-string/jumbo v12, "StartTime"

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    const-string/jumbo v22, "DoNotDisturb"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v21, "DoNotDisturbAllowExceptions"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v21, "HideVisualNotifications"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get10(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$3;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
