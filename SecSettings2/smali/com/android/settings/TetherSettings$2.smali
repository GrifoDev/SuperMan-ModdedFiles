.class Lcom/android/settings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TetheringSettings"

    const-string/jumbo v2, "Service is connected,setBluetoothTethering to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get1(Lcom/android/settings/TetherSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/TetherSettings;->-set1(Lcom/android/settings/TetherSettings;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-wrap8(Lcom/android/settings/TetherSettings;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->setBluetoothPanProxy(Landroid/bluetooth/BluetoothPan;)V

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get2(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/TetherSettings;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TetheringSettings"

    const-string/jumbo v3, "Service is disconnected, call closeProfileProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    const/4 v1, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettingsAdapter;->removeBluetoothPanProxy()V

    :cond_3
    return-void
.end method
