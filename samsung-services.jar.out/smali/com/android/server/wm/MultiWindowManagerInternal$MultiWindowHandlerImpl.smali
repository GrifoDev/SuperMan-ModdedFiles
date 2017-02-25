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
    .locals 17

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    invoke-virtual {v13, v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->enterFreeformTask(Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v13, "complete"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15, v13}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v13, "timeout"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15, v13}, Lcom/android/server/wm/MultiWindowManagerInternal;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v12}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto :goto_0

    :pswitch_4
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v12, :cond_0

    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Rect;

    :try_start_0
    new-instance v8, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v8}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    invoke-virtual {v8, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSlideMode(IZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v13, 0x1

    invoke-interface {v12, v11, v10, v13}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenFreezeAnimation;->setTimeout()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mScreenFreezeAnimation:Lcom/android/server/wm/ScreenFreezeAnimation;

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    const/16 v12, 0x8

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v14, "complete"

    invoke-static {v12, v14}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v14, "timeout"

    invoke-static {v12, v14}, Lcom/android/server/wm/MultiWindowManagerInternal;->-wrap0(Lcom/android/server/wm/MultiWindowManagerInternal;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v13, "complete"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v13}, Lcom/android/server/wm/MultiWindowManagerInternal;->setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v13, "timeout"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v13}, Lcom/android/server/wm/MultiWindowManagerInternal;->setSplitRelaunchAnimState(Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "MultiWindowManagerInternal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "MULTIWINDOW_ENTER_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const-string/jumbo v12, "feature"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "extra"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v5, v3}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v12, "features"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "extras"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v12, v12, Lcom/android/server/wm/MultiWindowManagerInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v7

    :goto_3
    if-lez v7, :cond_4

    add-int/lit8 v7, v7, -0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    invoke-interface {v12}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;->blinkMultiWindowDividerButtons()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/MultiWindowManagerInternal$MultiWindowHandlerImpl;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-static {v12}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v13

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
