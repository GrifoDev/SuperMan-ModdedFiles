.class Lcom/android/settings/wifi/ConfigureWifiSettings$3;
.super Ljava/lang/Object;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 15

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "ConfigureWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mEmCallback, stateId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "WiFiManageNetworks"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap4(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "MobileHotspot"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-set1(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)Z

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11, v5}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-set0(Lcom/android/settings/wifi/ConfigureWifiSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFi"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v11, "WiFiSetPasspointOn"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap2(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "MobileHotspot"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap2(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFi"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "WiFiSetPasspointOff"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap2(Lcom/android/settings/wifi/ConfigureWifiSettings;Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v11, "WiFiWpsPushButton"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap3(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    goto/16 :goto_0

    :cond_a
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap1(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "MobileHotspot"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get3(Lcom/android/settings/wifi/ConfigureWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap3(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    goto/16 :goto_0

    :cond_c
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFi"

    const-string/jumbo v13, "AlreadyOn"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiSettings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v11, "WiFiSetSleepPolicy"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v11

    if-lez v11, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v4

    const-string/jumbo v11, "ConfigureWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mEmCallback, param: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wifi_sleep_policy"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ltz v4, :cond_e

    const/4 v11, 0x2

    if-le v4, v11, :cond_f

    :cond_e
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SleepPolicy"

    const-string/jumbo v13, "Exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WifiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_f
    if-ne v4, v9, :cond_13

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f030154

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    const v8, 0x7f030153

    :goto_1
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, ""

    const/4 v11, 0x2

    if-ne v4, v11, :cond_11

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f1202df

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SleepPolicy"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "yes"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SleepPolicy"

    invoke-virtual {v11, v12, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WifiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_10
    const v8, 0x7f030152

    goto :goto_1

    :cond_11
    if-nez v4, :cond_12

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f1202e0

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_12
    const/4 v11, 0x1

    aget-object v6, v7, v11

    goto :goto_2

    :cond_13
    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get0()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    const-string/jumbo v11, "sleep_policy"

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string/jumbo v11, "ConfigureWifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mEmCallback, change the value of the sleep policy from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    iget-object v11, v11, Lcom/android/settings/wifi/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SleepPolicy"

    const-string/jumbo v13, "AlreadySet"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WifiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_15
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v11, "ConfigureWifiSettings"

    const-string/jumbo v12, "mEmCallback, parameter is null."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "SleepPolicy"

    const-string/jumbo v13, "Exist"

    const-string/jumbo v14, "no"

    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WiFiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v11, "WiFiShowMAC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WifiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_17
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v11, "WiFiShowIPAddress"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get4(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    const-string/jumbo v12, "WifiAdvanced"

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_19
    iget-object v11, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$3;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v11}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-get2(Lcom/android/settings/wifi/ConfigureWifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
