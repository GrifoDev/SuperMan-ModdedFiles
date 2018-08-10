.class Landroid/bluetooth/BluetoothGatt$1$12;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onReadRemoteRssi(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$rssi:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt$1;II)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$rssi:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->-get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$rssi:I

    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$status:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method
