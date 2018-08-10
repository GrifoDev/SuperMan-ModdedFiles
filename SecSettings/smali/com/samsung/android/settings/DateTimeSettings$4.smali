.class Lcom/samsung/android/settings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DateTimeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "DateTimeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "stateId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string/jumbo v17, "Use24HourFormatOn"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "Use24HourFormatOff"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v13

    const-string/jumbo v17, "Use24HourFormatOn"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateFormat"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "YES"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateFormat"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "NO"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get3(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateFormat"

    const-string/jumbo v19, "AlreadyOFF"

    const-string/jumbo v20, "NO"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateFormat"

    const-string/jumbo v19, "AlreadyOFF"

    const-string/jumbo v20, "YES"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v17, "AutomaticDateAndTimeOn"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string/jumbo v17, "AutomaticDateAndTimeOff"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get0(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v14

    const-string/jumbo v17, "AutomaticDateAndTimeOn"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutomaticDateAndTimeOn"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get0(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutomaticDateAndTimeOn"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get0(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutomaticDateAndTimeOff"

    const-string/jumbo v19, "AlreadyOFF"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "AutomaticDateAndTimeOff"

    const-string/jumbo v19, "AlreadyOFF"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v17, "SetDate"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v17, "DateTimeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "date="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string/jumbo v17, "DateTimeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "current year:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " month:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " day:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_10

    const/16 v17, 0x1

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_10

    const/16 v17, 0x2

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDate"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    aget-object v18, v11, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x2

    aget-object v19, v11, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/samsung/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetDate"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v17, "SetTime"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "DateTimeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const-string/jumbo v17, "DateTimeSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "current hourOfDay:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " minute:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v6, :cond_14

    const/16 v17, 0x1

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v7, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const/16 v17, 0x0

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    aget-object v18, v12, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/samsung/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SetTime"

    const-string/jumbo v19, "AlreadySet"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v17, "SelectTimeZone"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get5(Lcom/samsung/android/settings/DateTimeSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DateAndTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/DateTimeSettings$4;->this$0:Lcom/samsung/android/settings/DateTimeSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/settings/DateTimeSettings;->-get2(Lcom/samsung/android/settings/DateTimeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
