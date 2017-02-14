.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;
.super Ljava/lang/Object;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "WifiSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEmCallback, stateId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WiFiTurnOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "WiFiTurnOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyOFF"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "WiFiScan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startScan()V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v7, "WiFiSelectScanedAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "WifiSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mEmCallback, param: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v4

    :cond_b
    if-eqz v3, :cond_c

    const/4 v7, -0x1

    if-ne v4, v7, :cond_e

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "Name"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "Name"

    const-string/jumbo v9, "Exists"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->connect(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v7, "WiFiRemoveConnectAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v7, "WiFiSelectConnectedAp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_15
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_16
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "AlreadyConnected"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v7, "WiFiAdvanced"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFi"

    const-string/jumbo v9, "ON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v7, "WiFiDirectSettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pManager;->semIsWifiP2pEnabled()Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_1b
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MobileHotspot"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "yes"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    goto/16 :goto_0

    :cond_1c
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v7}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->semEnableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_1

    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "MobileHotspot"

    const-string/jumbo v9, "AlreadyON"

    const-string/jumbo v10, "no"

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v8, "WiFiDirectSettings"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    :cond_1e
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2
.end method
