.class Lcom/android/settings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEmCallback, stateId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "WiFiSetSleepPolicy"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v0

    const-string/jumbo v5, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEmCallback, param: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_sleep_policy"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v0, v4, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiSetSleepPolicyPrm"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string/jumbo v6, "sleep_policy"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v1, v3}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiSetSleepPolicyPrm"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string/jumbo v5, "WiFiManageNetworks"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->onManageNetworkMenuPressed()V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "ON"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiManageNetworks"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "WiFiWpsPushButton"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap5(Lcom/android/settings/wifi/AdvancedWifiSettings;I)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFi"

    const-string/jumbo v7, "ON"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "WiFiSetPasspointOn"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "DCM"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get3(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap6(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_c
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v9}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto :goto_1

    :cond_e
    const-string/jumbo v5, "WiFiSetPasspointOff"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5, v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap2(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "Passpoint"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WiFiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "WiFiShowMAC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v5, "WiFiShowIPAddress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_14
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v5, "SmartNetworkSwitch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "MobileNetwork"

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "No"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "WifiAdvanced"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
