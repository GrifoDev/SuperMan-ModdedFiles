.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;
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
    name = "DeviceShutDownHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->instanceForSystemUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Bluetooth_Profiles_Connection_Time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v0, "BluetoothEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DeviceShutDownHandler :: Profile is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-interface {v7, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v8

    const-string/jumbo v1, "com.android.bluetooth"

    const-string/jumbo v2, "BPCT"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->screen_bluetooth_global:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceShutDownHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v2

    sget v12, Lcom/android/settingslib/R$string;->event_bluetooth_bcpt:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/Utils;->sendSaLoggingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "Bluetooth_Profiles_Connection_Time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    return-void
.end method
