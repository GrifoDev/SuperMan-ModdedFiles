.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v3, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v3, Lcom/android/settingslib/R$string;->bluetooth_pairing_pin_error_message:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.bluetooth"

    const-string/jumbo v4, "BEMC"

    const-string/jumbo v5, "1_bluetooth_message_pairing_pin_error"

    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pairing_rejected_error_message:I

    const-string/jumbo v0, "2_bluetooth_message_pairing_rejected"

    :goto_0
    invoke-static {p1, p2, v1}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v3, "com.android.bluetooth"

    const-string/jumbo v4, "BEMC"

    invoke-static {p1, v3, v4, v0}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_error_message:I

    const-string/jumbo v0, "3_bluetooth_message_pairing_device_down"

    goto :goto_0

    :pswitch_4
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    const-string/jumbo v0, "4_bluetooth_message_pairing_error"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    if-nez p3, :cond_0

    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_6

    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found, calling readPairedDevices()."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but we have no record of that device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_5

    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but device not added in cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    invoke-interface {v2, v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_7
    monitor-exit v6

    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    const-string/jumbo v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez v4, :cond_8

    if-eqz p3, :cond_8

    invoke-virtual {p3, v8}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    :cond_8
    return-void
.end method
