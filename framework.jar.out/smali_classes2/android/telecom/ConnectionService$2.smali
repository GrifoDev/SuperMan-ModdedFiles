.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.aCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-wrap15(Landroid/telecom/ConnectionService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v4, v3}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCo"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v3, Landroid/telecom/ConnectionService$2$1;

    const-string/jumbo v5, "H.CS.crCo.pICR"

    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v3}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v6 .. v11}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCoC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_4
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    const-string/jumbo v5, "H.CS.crCoC.pICR"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v8}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v8}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCoF"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_6
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v12, Landroid/telecom/ConnectionService$2$3;

    const-string/jumbo v14, "H.CS.crCoF.pICR"

    const/4 v15, 0x0

    move-object/from16 v13, p0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual {v12}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    :try_start_7
    const-string/jumbo v3, "createConnectionFailed %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v16

    invoke-static {v3, v0, v8, v9, v10}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.ab"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.an"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.anV"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rWM"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.d"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.s"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.u"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap30(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.cASC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_11
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/telecom/CallAudioState;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    move-object/from16 v0, v23

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_12
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.pDT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_13
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sDT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap27(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_14
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.c"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_15
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sFC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_16
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.mC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_13
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_17
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap29(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_14
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_18
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.oPDC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/16 v28, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :cond_6
    const/16 v28, 0x0

    goto :goto_7

    :catchall_15
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_19
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.pEC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_16
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1a
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sCE"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v3, v0, v1, v2}, Landroid/telecom/ConnectionService;->-wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_17
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1b
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.oEC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_18
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1c
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.+RTT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/telecom/Connection$RttTextStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_19

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_19
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1d
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.-RTT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/telecom/ConnectionService;->-wrap28(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_1a
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_1e
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rTRUR"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/telecom/Connection$RttTextStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1b

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    :catchall_1b
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_16
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_14
        :pswitch_15
        :pswitch_a
        :pswitch_c
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_5
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_4
    .end packed-switch
.end method
