.class Lcom/android/settings/datausage/BillingCycleChnSettings$1;
.super Ljava/lang/Object;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleChnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/BillingCycleChnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "switch_traffic_settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "switch_traffic_settings"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-nez v17, :cond_4

    const/4 v9, 0x0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get6(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/content/SharedPreferences;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restrict_data_check_box"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "restrict_data_check_box"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    if-nez v17, :cond_5

    const/4 v10, 0x0

    :cond_1
    :goto_1
    const-string/jumbo v17, "DataUsageLimitOn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v17

    xor-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyON"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v17, "DataUsageLimitOff"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get7(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v17

    xor-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v17, "MonthlyDataLimitPopup"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    const-string/jumbo v17, "SetMonthlyDataLimit"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    :cond_b
    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataNumber"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUnit"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataNumber"

    const-string/jumbo v19, "DataNumber"

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getCHValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_f
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    const-string/jumbo v17, "M"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_11

    const-string/jumbo v17, "G"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUnit"

    const-string/jumbo v19, "DataUnit"

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getCHValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    const-string/jumbo v17, "M"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string/jumbo v17, "G"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_13
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v17, "M"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_14
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_data_limit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_data_limit"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Already set"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v17, "BillingCycleChnSettings"

    const-string/jumbo v18, "could not persist insert byte"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get3(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataAmount"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "No"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MonthlyDataLimitPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_15
    :try_start_1
    const-string/jumbo v17, "G"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    const/high16 v17, 0x44800000    # 1024.0f

    mul-float v2, v2, v17

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v17, "DataWarning"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    if-nez v9, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const/4 v15, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_data_limit"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "max"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "max"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_data_limit"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    :cond_18
    :goto_4
    const-string/jumbo v17, "max"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const-string/jumbo v15, "max"

    goto :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get5(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v14

    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v4

    :cond_1b
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "SimCardInfo"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "Yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarning"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_5

    :cond_1e
    const-string/jumbo v17, "DataUsageLimitRestrictOn"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    if-nez v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarninglmit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1f
    if-nez v10, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_22
    const-string/jumbo v17, "DataUsageLimitRestrictOff"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    if-nez v9, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataWarninglmit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_23
    if-eqz v10, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get2(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "Data usage restrict when limit exceeded "

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_26
    const-string/jumbo v17, "PlanBillingPopup"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_27

    const-string/jumbo v17, "SetPlanBillingDay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_27
    if-nez v9, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "MobileDatalimit"

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v17

    if-nez v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v17

    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Exists"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_2b
    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2c

    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v5, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "set_package_start_date_value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set_package_start_date_value"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/datausage/BillingCycleChnSettings;->sSubId:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-wrap0(Lcom/android/settings/datausage/BillingCycleChnSettings;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Already set"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DataUsageLimitSettings"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v7

    const-string/jumbo v17, "BillingCycleChnSettings"

    const-string/jumbo v18, "could not persist insert byte"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_2c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get4(Lcom/android/settings/datausage/BillingCycleChnSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/Preference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "DayOfMonth"

    const-string/jumbo v19, "Valid"

    const-string/jumbo v20, "no"

    invoke-virtual/range {v17 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    const-string/jumbo v18, "PlanBillingPopup"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/BillingCycleChnSettings$1;->this$0:Lcom/android/settings/datausage/BillingCycleChnSettings;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/BillingCycleChnSettings;->-get0(Lcom/android/settings/datausage/BillingCycleChnSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method
