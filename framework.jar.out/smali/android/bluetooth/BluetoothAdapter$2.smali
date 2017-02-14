.class Landroid/bluetooth/BluetoothAdapter$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothStateChange: up="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get9()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "BluetoothAdapter"

    const-string/jumbo v3, "Bluetooth is turned off, stop adv"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get7()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get7()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAllAdvertising()V

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get7()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get7()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getBleAppCount()I

    move-result v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->-get2(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getSamsungBleAppCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sub-int v1, v2, v3

    :goto_0
    if-nez v1, :cond_4

    const-string/jumbo v2, "BluetoothAdapter"

    const-string/jumbo v3, "There are no active google scan apps, stop scan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get8()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get8()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopAllScan()V

    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$2;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->-get1(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get8()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-get8()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BluetoothAdapter"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "BluetoothAdapter"

    const-string/jumbo v3, "onBluetoothStateChange: mManagerService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->-set2(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "BluetoothAdapter"

    const-string/jumbo v3, "onBluetoothStateChange: Bluetooth is on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
