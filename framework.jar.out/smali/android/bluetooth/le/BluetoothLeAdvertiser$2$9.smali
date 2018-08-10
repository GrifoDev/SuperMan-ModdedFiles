.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onPeriodicAdvertisingDataSet(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$advertiserId:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;->val$status:I

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/le/AdvertisingSetCallback;->onPeriodicAdvertisingDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V

    return-void
.end method
