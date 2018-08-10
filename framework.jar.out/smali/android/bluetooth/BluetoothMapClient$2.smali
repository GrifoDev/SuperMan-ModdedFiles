.class Landroid/bluetooth/BluetoothMapClient$2;
.super Ljava/lang/Object;
.source "BluetoothMapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothMapClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapClient"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothMapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothMapClient;->-set0(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->-get5(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->-get5(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    const/16 v2, 0x12

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothMapClient;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapClient"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothMapClient;->-set0(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->-get5(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient$2;->this$0:Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothMapClient;->-get5(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_1
    return-void
.end method
