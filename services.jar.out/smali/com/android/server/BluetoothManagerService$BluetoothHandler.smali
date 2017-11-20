.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_0

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Message: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_2

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    if-eqz v26, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap23(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_a

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get0()Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_b

    :cond_5
    :goto_3
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_8

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Binding to service to get name and address"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xbb8

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v12, Landroid/content/Intent;

    const-class v26, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    sget-object v28, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v29, 0x41

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v29

    move-object/from16 v3, v28

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v26

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_4

    :catch_0
    move-exception v18

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Unable to grab names"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_c

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "BLE Always On"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get22(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v27

    monitor-enter v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get4()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-set2(I)I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get24()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-set15(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set14(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-wrap21(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v27

    goto/16 :goto_3

    :catchall_1
    move-exception v26

    monitor-exit v27

    throw v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :sswitch_1
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_d

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;Z)Z

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_e

    const/16 v26, 0xf

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "BT is in BLE_ON State"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    const/16 v26, 0x1

    :goto_6
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set12(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get21(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :try_start_8
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_5

    :catchall_2
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v26

    :cond_f
    const/16 v26, 0x0

    goto :goto_6

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Added callback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-nez v6, :cond_11

    const-string/jumbo v6, "null"

    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v19

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Removed callback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-nez v6, :cond_12

    const-string/jumbo v6, "null"

    :cond_12
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get26(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/IBluetoothStateChangeCallback;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get26(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothDisableBleCallback;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothDisableBleCallback;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get20(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    if-eqz v17, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    if-eqz v17, :cond_1

    invoke-static/range {v17 .. v17}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_13

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/IBinder;

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :cond_14
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x64

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0xc8

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v26, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_15
    :try_start_b
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "bluetooth_hci_log"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "bluetooth_hci_log"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v26

    if-nez v26, :cond_17

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "IBluetooth.configHciSnoopLog return false"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_17
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get18(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/bluetooth/IBluetooth;->setBootState(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_9
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap18(Lcom/android/server/BluetoothManagerService;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get21(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v26

    if-nez v26, :cond_19

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "IBluetooth.enable() returned false"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v9

    :try_start_f
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Unable to call configHciSnoopSlog"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v26

    :catch_3
    move-exception v18

    :try_start_10
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Unable to register BluetoothCallback"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_9

    :cond_19
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set13(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_a

    :catch_4
    move-exception v9

    :try_start_12
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Unable to call enable()"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_a

    :cond_1a
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set13(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_a

    :sswitch_c
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_1c

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v14}, Lcom/android/server/BluetoothManagerService;->-set16(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v26

    if-nez v26, :cond_1d

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v15, v0, :cond_1d

    const/16 v26, 0x10

    move/from16 v0, v26

    if-ne v14, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;Z)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v15, v14}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    const/16 v26, 0xe

    move/from16 v0, v26

    if-ne v15, v0, :cond_1e

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v14, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;)V

    :cond_1e
    const/16 v26, 0xb

    move/from16 v0, v26

    if-ne v15, v0, :cond_1f

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v14, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;)V

    :cond_1f
    const/16 v26, 0x10

    move/from16 v0, v26

    if-ne v15, v0, :cond_20

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v14, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_20

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0x190

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_20
    const/16 v26, 0xc

    move/from16 v0, v26

    if-eq v14, v0, :cond_21

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v14, v0, :cond_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    if-eqz v26, :cond_1

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "bluetooth is recovered from error"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_22

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_GOOGLE_BLE_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v15, v14}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;II)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_23

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_SAMSUNG_BLE_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v15, v14}, Lcom/android/server/BluetoothManagerService;->-wrap22(Lcom/android/server/BluetoothManagerService;II)V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-result-object v26

    if-nez v26, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :cond_24
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xc8

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap17(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get25(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get25(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    const/16 v28, 0xd

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set16(Lcom/android/server/BluetoothManagerService;I)I

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get25(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x3c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set16(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    :cond_29
    :try_start_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :cond_2a
    :try_start_17
    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Bad msg.arg1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :catchall_4
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v26

    :sswitch_11
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get21(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set17(Lcom/android/server/BluetoothManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_2b

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x12c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_37

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_b
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;)V

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v22

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "state : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0xb

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xb

    const/16 v28, 0xc

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v22

    :cond_2d
    const/16 v26, 0xc

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    const/16 v28, 0xd

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Turn off BR/EDR"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap24(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v22

    :cond_2e
    const/16 v26, 0xd

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_2f

    const/16 v26, 0xe

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_34

    :cond_2f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v22

    :cond_30
    const/16 v26, 0xf

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_31

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Turn off BLE"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap19(Lcom/android/server/BluetoothManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    :cond_31
    const/16 v26, 0x10

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;ZZ)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_6

    move-result v26

    if-eqz v26, :cond_35

    const/4 v8, 0x0

    :cond_32
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap17(Lcom/android/server/BluetoothManagerService;)V

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v8, :cond_36

    const-wide/16 v26, 0xbb8

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x3c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-set16(Lcom/android/server/BluetoothManagerService;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get21(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :catch_5
    move-exception v18

    :try_start_1b
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Unable to unregister"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_b

    :catchall_5
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v26

    :cond_34
    const/16 v26, 0xa

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    goto/16 :goto_c

    :cond_35
    const/4 v8, 0x1

    goto/16 :goto_d

    :catch_6
    move-exception v9

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "RemoteException "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catchall_6
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v26

    :cond_36
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_e

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_1

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x12c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xc8

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_1

    const-string/jumbo v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_39

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "MESSAGE_USER_UNLOCKED"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x12c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_3c

    :cond_3a
    :goto_f
    :sswitch_15
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get19()I

    move-result v26

    if-nez v26, :cond_3e

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.server.BT_IT_POLICY"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v26, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x10406b8

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v26, 0x4000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v28, "android.permission.BLUETOOTH"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_3b
    :goto_10
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "mHandler.removeMessages(MESSAGE_BT_IT_POLICY"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-nez v26, :cond_3a

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()Z

    move-result v26

    if-eqz v26, :cond_3d

    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "Enabled but not bound; retrying after unlock"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get21(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_f

    :cond_3e
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get19()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.server.BT_IT_POLICY"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v26, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x10406b9

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v26, 0x4000000

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v28, "android.permission.BLUETOOTH"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_16
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "mHandler.removeMessages(MESSAGE_BT_ENABLE_SECURITY_POPUP"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2bc

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v26, "BluetoothManagerService"

    const-string/jumbo v27, "mHandler.removeMessages(MESSAGE_CHINA_BT_ENABLE_BLOCK_POPUP"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2bd

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->-wrap6(Lcom/android/server/BluetoothManagerService;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    new-instance v27, Landroid/content/Intent;

    const-string/jumbo v28, "com.android.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_15
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x28 -> :sswitch_b
        0x29 -> :sswitch_10
        0x2a -> :sswitch_11
        0x3c -> :sswitch_d
        0x64 -> :sswitch_c
        0x65 -> :sswitch_12
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_13
        0x12d -> :sswitch_14
        0x190 -> :sswitch_9
        0x191 -> :sswitch_a
        0x2bc -> :sswitch_16
        0x2bd -> :sswitch_17
        0x2be -> :sswitch_e
        0x2bf -> :sswitch_f
        0x3fa -> :sswitch_7
        0x3fb -> :sswitch_8
    .end sparse-switch
.end method
