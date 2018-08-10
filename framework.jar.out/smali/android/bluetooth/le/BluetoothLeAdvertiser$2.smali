.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.source "BluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertisingDataSet(II)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdvertisingEnabled(IZI)V
    .locals 7

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdvertisingParametersUpdated(III)V
    .locals 7

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$7;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdvertisingSetStarted(III)V
    .locals 7

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    move-object v1, p0

    move v2, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdvertisingSetStopped(I)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {v1, p0, p1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOwnAddressRead(IILjava/lang/String;)V
    .locals 7

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPeriodicAdvertisingDataSet(II)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$9;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPeriodicAdvertisingEnabled(IZI)V
    .locals 7

    iget-object v6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$10;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPeriodicAdvertisingParametersUpdated(II)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$8;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanResponseDataSet(II)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-direct {v1, p0, p1, v2, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
