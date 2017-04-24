.class final Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge$MultiWindowHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "complete"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "timeout"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_3
    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v15}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto :goto_0

    :pswitch_4
    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v15, :cond_0

    sget-boolean v15, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    :try_start_2
    new-instance v11, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v11}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {v11, v14, v12}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSlideMode(IZ)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v15, v14, v13, v0}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTimeout()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v15}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    const/16 v15, 0x8

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "complete"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "timeout"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "complete"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v17, "timeout"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_1

    :catchall_6
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v15, "MultiWindowManagerInternal"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "MULTIWINDOW_ENTER_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto/16 :goto_1

    :catchall_7
    move-exception v15

    monitor-exit v16

    throw v15

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const-string/jumbo v15, "feature"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "extra"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v15, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v15, "features"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "extras"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v15, v15, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v15, v9, v7}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    monitor-enter v16

    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-result v10

    :goto_3
    if-lez v10, :cond_4

    add-int/lit8 v10, v10, -0x1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    invoke-interface {v15}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;->blinkMultiWindowDividerButtons()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_b
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_4
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v15}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    monitor-exit v16

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
