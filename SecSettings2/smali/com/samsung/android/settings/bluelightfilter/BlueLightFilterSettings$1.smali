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
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "blue_light_filter_opacity"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v13, "BlueLightFilterControl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_2

    const/16 v13, 0x64

    if-le v3, v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_3
    div-int/lit8 v2, v3, 0xa

    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "opacity_currentValue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Level"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v13, "BlueLightFilterControlUp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "opacity_currentValue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xa

    if-ne v8, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    if-ltz v8, :cond_9

    const/16 v13, 0xa

    if-le v8, v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v13, "BlueLightFilterControlDown"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    if-nez v8, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_f

    const/16 v13, 0xa

    if-le v8, v13, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v13, "BlueLightFilterControlMax"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const/16 v13, 0xa

    if-ne v8, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMax"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v13, "BlueLightFilterControlMin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    const-string/jumbo v15, "ON"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Display"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    if-nez v8, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Opacity"

    const-string/jumbo v15, "AlreadyMin"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v13, "BlueLightFilterScheduleSunsetToSunrise"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "AlreadyOn"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SunsetToSunrise"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "SunsetToSunrise"

    const-string/jumbo v15, "AlreadySet"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v13, "BlueLightFilterScheduleCustom"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "AlreadyOn"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->isChecked()Z

    move-result v13

    if-nez v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Selected"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "HH:MM"

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v9, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start time calendar.getTime()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :goto_1
    if-eqz v11, :cond_21

    if-nez v7, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "No"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    :cond_22
    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start time is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v11}, Ljava/util/Date;->getHours()I

    move-result v14

    invoke-virtual {v11}, Ljava/util/Date;->getMinutes()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    const-string/jumbo v13, "BlueLightFilterSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "end time is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v14

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v13

    if-eqz v13, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "Schedule"

    const-string/jumbo v15, "Valid"

    const-string/jumbo v16, "Yes"

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    const-string/jumbo v14, "BlueLightFilter"

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;->this$0:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;

    invoke-static {v13}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->-get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
