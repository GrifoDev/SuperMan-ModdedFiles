.class Lcom/android/settings/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TetheringSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived : stateId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "BluetoothTetheringOn"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v7, "device_policy"

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap0(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v3, v10}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v1, :cond_0

    if-eq v0, v11, :cond_1

    :cond_0
    const-string/jumbo v6, "TetherSettings"

    const-string/jumbo v7, "Internet Sharing is restricted by MDM."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v6}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v7}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1040660

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v7, "phone"

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap0(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    const-string/jumbo v7, "bluetooth.pan.tether_on"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->-wrap5(Lcom/android/settings/TetherSettings;I)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_2
    const-string/jumbo v6, "bluetooth.pan.tether_on"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6, v11}, Lcom/android/settings/TetherSettings;->-wrap6(Lcom/android/settings/TetherSettings;I)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyON"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "BluetoothTetheringOff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_8

    const-string/jumbo v6, "bluetooth.pan.tether_on"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_6
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_2
    return-void

    :cond_7
    invoke-virtual {v2, v9}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "bluetoothPan is null. request turn off when binding is done!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "BluetoothTethering"

    const-string/jumbo v8, "AlreadyOFF"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "bluetoothPan is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v6, "HotspotSettings"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v7}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :goto_3
    return-void

    :cond_b
    const-string/jumbo v6, "TetheringSettings"

    const-string/jumbo v7, "mWifiApSettings is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MobileHotspotAndTethering"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/TetherSettings$5;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v6}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_3

    :cond_c
    return-void
.end method
