.class Landroid/bluetooth/BluetoothA2dpSink$2;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 569
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 571
    invoke-static {}, Landroid/bluetooth/BluetoothA2dpSink;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothA2dpSink"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->-set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    .line 574
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 576
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    .line 575
    const/16 v2, 0xb

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 570
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-static {}, Landroid/bluetooth/BluetoothA2dpSink;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothA2dpSink"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dpSink;->-set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    .line 582
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 579
    :cond_1
    return-void
.end method
