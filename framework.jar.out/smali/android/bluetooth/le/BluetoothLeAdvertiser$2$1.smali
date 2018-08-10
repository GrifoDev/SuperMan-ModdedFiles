.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingSetStarted(III)V
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

.field final synthetic val$txPower:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iput p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get2(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Landroid/bluetooth/le/AdvertisingSet;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v2, v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get1(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/le/AdvertisingSet;-><init>(ILandroid/bluetooth/IBluetoothManager;)V

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    return-void
.end method
