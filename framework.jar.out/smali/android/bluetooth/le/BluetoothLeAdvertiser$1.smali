.class Landroid/bluetooth/le/BluetoothLeAdvertiser$1;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p2, "val$callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "val$error"    # I

    .prologue
    .line 434
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;->val$error:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 436
    return-void
.end method
