.class Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    const v4, 0x1120096

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OneHandedModeOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "OneHandedModeOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode "

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "ReduceScreenSizeByUsingButton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReduceScreensizeByButton"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReduceScreensizeByButton "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "ReduceScreenSizeByUsingGesture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get4(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get0(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReduceScreensizeByGesture"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "Yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->performClick()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "ReduceScreensizeByGesture "

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "No"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OneHandedMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/NewOneHandOperationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
