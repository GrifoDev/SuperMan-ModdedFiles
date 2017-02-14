.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    const-string/jumbo v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-wrap11(Lcom/android/server/MountService;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-wrap3(Lcom/android/server/MountService;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "Running fstrim idle maintenance"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/server/MountService;->-set2(Lcom/android/server/MountService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->-get6(Lcom/android/server/MountService;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-wrap5(Lcom/android/server/MountService;)Z

    move-result v17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v22

    const-string/jumbo v23, "fstrim"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v17, :cond_2

    const-string/jumbo v21, "dotrimbench"

    :goto_2
    const/16 v25, 0x0

    aput-object v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "Unable to record last fstrim!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_2
    const-string/jumbo v21, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v12

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "Failed to run fstrim!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/storage/IMountShutdownObserver;

    const/16 v18, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "shutdown"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v18

    :goto_4
    if-eqz v13, :cond_0

    if-eqz v18, :cond_3

    const/16 v21, 0x0

    :goto_5
    :try_start_4
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v9

    goto/16 :goto_0

    :cond_3
    const/16 v21, -0x1

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap2(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string/jumbo v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Ignoring mount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " due to policy"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const-string/jumbo v22, "readonly_storage"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, -0x80000000

    :cond_5
    const/4 v15, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v21

    if-eqz v21, :cond_6

    const/4 v15, 0x1

    :cond_6
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v16

    :cond_7
    if-nez v16, :cond_8

    new-instance v16, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/MountService;->requiredEncPolicyCheck(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    const-string/jumbo v24, "hidden"

    const/16 v25, 0x4

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_0

    :catch_3
    move-exception v10

    goto/16 :goto_0

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v21

    if-eqz v21, :cond_a

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: execute volume mount !!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v21

    if-eqz v21, :cond_e

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v21

    if-nez v21, :cond_d

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v21

    if-eqz v21, :cond_b

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: LPM disable to boost usb-storage up until 100 sec"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v21

    const v22, 0x186a0

    invoke-virtual/range {v21 .. v22}, Landroid/os/DVFSHelper;->acquire(I)V

    :goto_6
    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    const-string/jumbo v24, "hidden"

    const/16 v25, 0x4

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v21

    if-eqz v21, :cond_13

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v21

    if-nez v21, :cond_12

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v21

    if-eqz v21, :cond_10

    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: LPM enable after boosting usb-storage up"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: not Usb"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: vol.disk is NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: not TYPE_PUBLIC"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_e
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get0(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: not Usb"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: vol.disk is NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: not TYPE_PUBLIC"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v21, "MountService"

    const-string/jumbo v22, "handleMessage:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Volume "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " broadcasting "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v21, "android.os.storage.extra.STORAGE_VOLUME"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v21, 0x4000000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-get2(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v23, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/android/server/MountService;->-wrap9(Lcom/android/server/MountService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->-wrap16(Lcom/android/server/MountService;)V

    goto/16 :goto_0

    :catch_4
    move-exception v10

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
