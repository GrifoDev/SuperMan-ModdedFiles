.class Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "TurnOnAutoPowerOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOn"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOn"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v17, "TurnOffAutoPowerOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOn"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOn"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v17, "AutoPowerOnTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    const/4 v4, -0x1

    const/4 v7, -0x1

    :try_start_0
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOnTime: hour = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", mins = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_9

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_on_time"

    const/16 v19, 0x2bc

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    mul-int/lit8 v17, v4, 0x64

    add-int v17, v17, v7

    move/from16 v0, v17

    if-ne v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerON"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "time"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerON"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "time"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get5(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v17, "AutoPowerOnDays"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOnDays: paramDay = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_10
    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [I

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_2
    :try_start_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    aget-object v17, v9, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v14, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_11
    const/4 v6, 0x1

    :goto_3
    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    const/4 v5, 0x0

    :goto_4
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_12

    aget v17, v14, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_1
    move-exception v3

    const-string/jumbo v17, "AutoPowerOnOffSettings"

    const-string/jumbo v18, "NumberFormatException error"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_12
    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOnDays: daysOfWeek.getCoded() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get4(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_on_repeat_days"

    const/16 v19, 0x7c

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v17

    move/from16 v0, v17

    if-ne v12, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerON"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Day"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_on_repeat_days"

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerON"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Day"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get3(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v17, "TurnOnAutoPowerOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOff"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOff"

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v17, "TurnOffAutoPowerOff"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOff"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOff"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v17, "AutoPowerOffTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1f
    const/4 v4, -0x1

    const/4 v7, -0x1

    :try_start_2
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    :goto_5
    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOffTime: hour = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", mins = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_20

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_off_time"

    const/16 v19, 0x8fc

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    mul-int/lit8 v17, v4, 0x64

    add-int v17, v17, v7

    move/from16 v0, v17

    if-ne v11, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerOFF"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "time"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerOFF"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "time"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get2(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v17, "AutoPowerOffDays"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOnDays: paramDay = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "exist"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_27
    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [I

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_6
    :try_start_3
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_28

    aget-object v17, v9, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v14, v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_28
    const/4 v6, 0x1

    :goto_7
    new-instance v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    const/4 v5, 0x0

    :goto_8
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_29

    aget v17, v14, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->setItem(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :catch_3
    move-exception v3

    const-string/jumbo v17, "AutoPowerOnOffSettings"

    const-string/jumbo v18, "NumberFormatException error"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_29
    const-string/jumbo v17, "AutoPowerOnOffSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AutoPowerOnDays: daysOfWeek.getCoded() = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDays"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v17

    if-nez v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get1(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_off_repeat_days"

    const/16 v19, 0x7c

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v17

    move/from16 v0, v17

    if-ne v10, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerOff"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Day"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "auto_power_off_repeat_days"

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v19

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get6(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-wrap0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SameAutoPowerOff"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Day"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get0(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutoPowerOnOff"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;->this$0:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->-get7(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
