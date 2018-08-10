.class Landroid/bluetooth/BluetoothGatt$1$8;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onNotify(Ljava/lang/String;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$8;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt$1$8;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$8;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$8;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$8;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$8;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method
