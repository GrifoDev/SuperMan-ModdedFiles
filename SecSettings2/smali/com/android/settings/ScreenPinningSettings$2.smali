.class Lcom/android/settings/ScreenPinningSettings$2;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ScreenPinningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ScreenPinningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PinWindowsOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "PinWindowsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "PinWindows"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings$2;->this$0:Lcom/android/settings/ScreenPinningSettings;

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->-get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
