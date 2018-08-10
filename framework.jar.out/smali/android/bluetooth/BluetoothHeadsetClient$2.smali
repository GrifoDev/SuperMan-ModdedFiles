.class Landroid/bluetooth/BluetoothHeadsetClient$2;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "BluetoothHeadsetClient"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    const/16 v2, 0x10

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BluetoothHeadsetClient"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_0
    return-void
.end method
