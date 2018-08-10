.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;
.super Ljava/lang/Object;
.source "NavigationBarHardPressSetting.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HardPressHomeButtonOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressHomeButtonOn"

    const-string/jumbo v5, "AlreadyON"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressHomeButtonOn "

    const-string/jumbo v5, "AlreadyON"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "HardPressHomeButtonOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressHomeButtonOn"

    const-string/jumbo v5, "AlreadyOFF"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressHomeButtonOn "

    const-string/jumbo v5, "AlreadyOFF"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "HardPressSensitivityIncrease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityIncrease"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->getProgress()I

    move-result v3

    if-lt v3, v5, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityIncrease"

    const-string/jumbo v5, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->getProgress()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    const-string/jumbo v3, "NavigationBarHardPressSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_pressure_user_level"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityIncrease"

    const-string/jumbo v5, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "HardPressSensitivityDecrease"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityDecrease"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->getProgress()I

    move-result v3

    if-gtz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityDecrease"

    const-string/jumbo v5, "AlreadyMin"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->getProgress()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    const-string/jumbo v3, "NavigationBarHardPressSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_pressure_user_level"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivityDecrease"

    const-string/jumbo v5, "AlreadyMin"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "HardPressSensitivitySet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v1, v3, -0x1

    if-ltz v1, :cond_12

    if-le v1, v5, :cond_13

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->getProgress()I

    move-result v3

    if-ne v1, v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v3, "NavigationBarHardPressSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get1(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureSeekBarPreference;->setProgress(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_pressure_user_level"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivitySet"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "HardPressSensitivity"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$6;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
