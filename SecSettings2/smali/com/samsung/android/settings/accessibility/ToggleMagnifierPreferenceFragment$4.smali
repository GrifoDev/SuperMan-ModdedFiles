.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ToggleMagnifierPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived : stateId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "finger_magnifier"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v6, "MagnifierWindowOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_On"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "MagnifierWindowOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_Off"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "ZoomPercentageSetMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "ZoomPercentageSetMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v6, "ZoomPercentageSetIncrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_13

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v6, "ZoomPercentageSetDecrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_16

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v6, "MagnifierSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_17

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_magnifier_size"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_18

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_On"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "Already_Off"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_maximum"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    const-string/jumbo v8, "Already_minimum"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_16
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_18
    if-lt v4, v11, :cond_19

    const/4 v6, 0x3

    if-le v4, v6, :cond_1a

    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exists"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1a
    if-eqz v3, :cond_1c

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_magnifier_size"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "YesYes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "Off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    :cond_1d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
