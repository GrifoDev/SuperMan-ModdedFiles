.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$TetherChangeReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v12, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "availableArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string/jumbo v12, "activeArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v12, "erroredArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    invoke-static {v15, v12, v13, v14}, Lcom/android/settings/TetherSettings;->-wrap9(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v12, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v12}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v13, "wifi_state"

    const/16 v14, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-wrap2(Lcom/android/settings/TetherSettings;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v12, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v12, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set3(Lcom/android/settings/TetherSettings;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v12, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v13, "connected"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set5(Lcom/android/settings/TetherSettings;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set4(Lcom/android/settings/TetherSettings;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get8(Lcom/android/settings/TetherSettings;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/16 v13, 0x9

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-wrap3(Lcom/android/settings/TetherSettings;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v12}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v12, 0xc

    if-ne v7, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "TetheringSettings"

    const-string/jumbo v13, "Bluetooth is on, but mBluetoothPan is null , then call getProfileProxy"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v13}, Lcom/android/settings/TetherSettings;->-get7(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v4, v12, v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string/jumbo v12, "android.bluetooth.adapter.extra.STATE"

    const/high16 v13, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothPan;

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    :cond_9
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x17

    invoke-virtual {v4, v12}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    const-string/jumbo v12, "TetheringSettings"

    const-string/jumbo v13, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    :cond_a
    const-string/jumbo v12, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string/jumbo v12, "TetherSettings"

    const-string/jumbo v13, "received pan state changed."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "android.bluetooth.profile.extra.STATE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    if-nez v11, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_c
    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    const/4 v12, 0x3

    if-ne v11, v12, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v12}, Lcom/android/settings/TetherSettings;->updateWifiApState()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "TetheringSettings"

    const-string/jumbo v13, "WIFI connected :: disable PAN NAP (VZW Requirement)"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothPan;

    if-eqz v9, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v12}, Lcom/android/settings/TetherSettings;->-get3(Lcom/android/settings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v12

    const-string/jumbo v13, "bluetooth.pan.tether_on"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
