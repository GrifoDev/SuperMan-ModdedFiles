.class Landroid/bluetooth/SemBluetoothHidDevice$2;
.super Ljava/lang/Object;
.source "SemBluetoothHidDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SemBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/SemBluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/SemBluetoothHidDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/SemBluetoothHidDevice;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {p2}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/ISemBluetoothHidDevice;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/SemBluetoothHidDevice;->-set0(Landroid/bluetooth/SemBluetoothHidDevice;Landroid/bluetooth/ISemBluetoothHidDevice;)Landroid/bluetooth/ISemBluetoothHidDevice;

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {v0}, Landroid/bluetooth/SemBluetoothHidDevice;->-get4(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {v0}, Landroid/bluetooth/SemBluetoothHidDevice;->-get4(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    const/16 v2, 0x16

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/bluetooth/SemBluetoothHidDevice;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {v0, v2}, Landroid/bluetooth/SemBluetoothHidDevice;->-set0(Landroid/bluetooth/SemBluetoothHidDevice;Landroid/bluetooth/ISemBluetoothHidDevice;)Landroid/bluetooth/ISemBluetoothHidDevice;

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {v0}, Landroid/bluetooth/SemBluetoothHidDevice;->-get4(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/SemBluetoothHidDevice$2;->this$0:Landroid/bluetooth/SemBluetoothHidDevice;

    invoke-static {v0}, Landroid/bluetooth/SemBluetoothHidDevice;->-get4(Landroid/bluetooth/SemBluetoothHidDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method
