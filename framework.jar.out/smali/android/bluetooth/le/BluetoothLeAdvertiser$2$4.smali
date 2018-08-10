.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingEnabled(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic val$enabled:Z

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$advertiserId:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput-boolean p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$enabled:Z

    iput p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->-get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$advertiserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget-boolean v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$enabled:Z

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;->val$status:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingEnabled(Landroid/bluetooth/le/AdvertisingSet;ZI)V

    return-void
.end method
