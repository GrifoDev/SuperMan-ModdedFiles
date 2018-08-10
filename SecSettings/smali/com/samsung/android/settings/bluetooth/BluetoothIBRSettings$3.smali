.class Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;
.super Ljava/lang/Object;
.source "BluetoothIBRSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "BluetoothIBRSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BluetoothInbandRingtoneOn"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "PhoneRingtone"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothIBRSettings"

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->switchStateChange(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "BluetoothInbandRingtoneOff"

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "PhoneRingtone"

    const-string/jumbo v2, "AlreadyOff"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/Utils;->addNlgScreenParam(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothIBRSettings"

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->requestNlg(Lcom/samsung/android/settings/bixby/EmSettingsManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/Utils;->sendResponseAndInit(Lcom/samsung/android/settings/bixby/EmSettingsManager;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->switchStateChange(Z)V

    goto :goto_0
.end method
