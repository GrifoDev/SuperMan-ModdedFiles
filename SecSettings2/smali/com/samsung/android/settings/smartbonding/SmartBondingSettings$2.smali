.class Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DownloadBoosterOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DownloadBoosterOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster "

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DownloadBooster"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
