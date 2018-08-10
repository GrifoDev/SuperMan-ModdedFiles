.class Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;
.super Ljava/lang/Object;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "blue_light_filter_opacity"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v20, "BlueLightFilterControl"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ltz v5, :cond_2

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v5, v0, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_4
    div-int/lit8 v4, v5, 0xa

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "opacity_currentValue"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v20, "BlueLightFilterControlUp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_8
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "opacity_currentValue"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_a

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v13, v0, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v20, "BlueLightFilterControlDown"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_e
    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_10

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v13, v0, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v20, "BlueLightFilterControlMax"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_14
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v20, "BlueLightFilterControlMin"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_18
    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Opacity"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v20, "BlueLightFilterControlUpByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string/jumbo v20, "BlueLightFilterControlDownByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v20

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-lez v6, :cond_20

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v6, v0, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_1
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "Valid"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_21
    rem-int/lit8 v20, v6, 0xa

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_22

    div-int/lit8 v6, v6, 0xa

    :goto_1
    const-string/jumbo v20, "BlueLightFilterControlUpByPercentage"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    const/16 v20, 0xa

    move/from16 v0, v20

    if-lt v13, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    div-int/lit8 v20, v6, 0xa

    add-int/lit8 v6, v20, 0x1

    goto :goto_1

    :cond_23
    add-int/2addr v6, v13

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v6, v0, :cond_24

    const/16 v6, 0xa

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMax"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_26
    if-gtz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_27
    sub-int v6, v13, v6

    if-gez v6, :cond_28

    const/4 v6, 0x0

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    const-string/jumbo v22, "AlreadyMin"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2a
    const-string/jumbo v20, "BlueLightFilterScheduleSunsetToSunrise"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "Yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "AlreadySet"

    const-string/jumbo v23, "No"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v20, "BlueLightFilterScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2f

    const-string/jumbo v20, "BlueLightFilterControlAndScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    :cond_31
    const/4 v12, 0x0

    const/4 v11, -0x1

    const-string/jumbo v20, "BlueLightFilterControlAndScheduleCustom"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilterControl"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_34

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_34

    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_32

    const/16 v20, 0x64

    move/from16 v0, v20

    if-le v11, v0, :cond_33

    :cond_32
    const/4 v11, -0x1

    :cond_33
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mEmSettingsManager opacityLevel : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_34
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "SetStartTime"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "SetEndTime"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick()V

    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "HH:mm"

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v18, 0x0

    const/4 v10, 0x0

    if-eqz v17, :cond_35

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_35

    :try_start_3
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "start time calendar.getTime() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v18

    :cond_35
    :goto_3
    if-eqz v9, :cond_36

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_36

    :try_start_4
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "end time calendar.getTime() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    :cond_36
    :goto_4
    if-eqz v18, :cond_37

    if-nez v10, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "Schedule"

    const-string/jumbo v22, "Exist"

    const-string/jumbo v23, "no"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :catch_2
    move-exception v7

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mEmSettingsManager NumberFormatException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    goto/16 :goto_2

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v8

    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    :cond_38
    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "start time is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "end time is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " , "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_39

    const-string/jumbo v20, "BlueLightFilterSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "set opacity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    div-int/lit8 v22, v11, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    div-int/lit8 v11, v11, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v20

    if-eqz v20, :cond_3a

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    const/16 v22, 0xc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_3b

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    add-int/lit8 v20, v20, -0xc

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v20

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3c

    const-string/jumbo v20, "0"

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getMinutes()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    const/16 v22, 0xc

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_3d

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    add-int/lit8 v20, v20, -0xc

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v20

    const/16 v22, 0xa

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3e

    const-string/jumbo v20, "0"

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "EndTime"

    const-string/jumbo v22, "Exist"

    const-string/jumbo v23, "yes"

    invoke-virtual/range {v20 .. v23}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "StartTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "EndTime"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    const-string/jumbo v21, "BlueLightFilter"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v20

    sget-object v21, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3b
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getHours()I

    move-result v20

    goto/16 :goto_5

    :cond_3c
    const-string/jumbo v20, ""

    goto/16 :goto_6

    :cond_3d
    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v20

    goto/16 :goto_7

    :cond_3e
    const-string/jumbo v20, ""

    goto/16 :goto_8
.end method
