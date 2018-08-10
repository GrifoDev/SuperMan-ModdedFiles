.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;
.super Ljava/lang/Object;
.source "BtTetherSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BtTetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BluetoothTetheringOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-wrap1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->showErrormsgfortether(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    const-string/jumbo v2, "bluetooth.pan.tether_on"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    const-string/jumbo v4, "AlreadyON"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-set0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-wrap3(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V

    return-void

    :cond_4
    const-string/jumbo v2, "BluetoothTetheringOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "bluetooth.pan.tether_on"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "BluetoothTethering"

    const-string/jumbo v4, "AlreadyOFF"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v2, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->-wrap2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)V

    goto :goto_0

    :cond_7
    return-void
.end method
