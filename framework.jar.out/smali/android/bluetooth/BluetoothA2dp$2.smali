.class Landroid/bluetooth/BluetoothA2dp$2;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothA2dp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothA2dp"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->-set0(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothA2dp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothA2dp"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->-set0(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v1}, Landroid/bluetooth/BluetoothA2dp;->-get5(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
