.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mIsSamsungApp:Z

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Binder is dead -  unregister Ble App"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v1

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get23()I

    move-result v2

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-set2(I)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Google : remove token ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Its Samsung App, decrease the count"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get23()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get23()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-set14(I)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Samsung : remove token ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-le v1, v2, :cond_a

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Google app killed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :try_start_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get23()I

    move-result v4

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Stop third party scan, if any"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Disabling LE only mode after application crash"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :cond_d
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "error when sending ble disable"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to call onBrEdrDown"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method

.method public setTokenAndAppInfo(Landroid/os/IBinder;Z)V
    .locals 3

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenAndAppInfo :: isSamsungApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "token is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mIsSamsungApp:Z

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->mToken:Landroid/os/IBinder;

    return-void
.end method
