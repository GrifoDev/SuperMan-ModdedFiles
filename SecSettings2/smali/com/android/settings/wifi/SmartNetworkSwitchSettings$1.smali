.class Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " SmartNetworkSwitchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEmCallback, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SmartNetworkSwitchOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "SmartNetworkSwitchOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get3(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1, v6}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "SmartNetworkSwitchAggressiveOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get2(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->radioButtonClicked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitchAggressive"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "SmartNetworkSwitch"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$1;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
