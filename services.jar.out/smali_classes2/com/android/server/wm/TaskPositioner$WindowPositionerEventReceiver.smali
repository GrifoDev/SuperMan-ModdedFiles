.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_TaskPositioner$WindowPositionerEventReceiver_12134(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 31

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-nez v27, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v20, p1

    check-cast v20, Landroid/view/MotionEvent;

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    if-eqz v27, :cond_2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    packed-switch v27, :pswitch_data_0

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-wrap1(Lcom/android/server/wm/TaskPositioner;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    xor-int/lit8 v27, v26, 0x1

    if-eqz v27, :cond_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->dispatchFinishMovingTask()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v26, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_5

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_2b

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v25

    :try_start_7
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get21(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    if-eqz v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    const/4 v8, 0x0

    :goto_3
    const/16 v19, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v27, :cond_2f

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    if-eqz v27, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->isAttached()Z

    move-result v27

    if-eqz v27, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->getGuideState()I

    move-result v27

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_2d

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result-object v25

    :try_start_9
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/4 v8, 0x0

    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/MultiWindowManagerInternal;->moveTaskToDockedOrFullscreenStack(Lcom/android/server/wm/Task;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_7
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set1(Lcom/android/server/wm/TaskPositioner;Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_9
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_6
    return-void

    :pswitch_0
    :try_start_b
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_3

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_DOWN @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "Exception caught by drag handleMotion"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_6

    :pswitch_1
    :try_start_d
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_a

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_MOVE @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v27, :cond_1b

    sget-boolean v27, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    if-eqz v27, :cond_1a

    const/16 v17, 0x1

    :goto_7
    if-eqz v17, :cond_e

    const/16 v18, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v29

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getTopVisibleTaskLocked(ILcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v14

    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v18

    :goto_8
    :try_start_11
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenDocking(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get0()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result v27

    if-eqz v27, :cond_c

    :try_start_12
    new-instance v24, Ljava/io/StringWriter;

    invoke-direct/range {v24 .. v24}, Ljava/io/StringWriter;-><init>()V

    new-instance v23, Ljava/io/PrintWriter;

    invoke-direct/range {v23 .. v24}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "TaskPositioner: fullscreenTask="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v27, "---------------------------------------------"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v27, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$2;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$yoWfOBpDYg20wqby6e7h5wfkxVw$2;-><init>(Ljava/lang/Object;)V

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const-string/jumbo v27, "---------------------------------------------"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_c
    :goto_a
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result v27

    if-eqz v27, :cond_e

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->touchFocusTransferred()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set2(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_e
    :goto_b
    if-eqz v17, :cond_27

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get13(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-eqz v27, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_1e

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_1f

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_20

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_21

    const/4 v4, 0x1

    :goto_f
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_f
    :goto_10
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x4

    if-eqz v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_10
    :goto_11
    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_11
    :goto_12
    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    and-int/lit8 v27, v27, 0x4

    if-eqz v27, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_12
    :goto_13
    if-eqz v7, :cond_13

    if-nez v6, :cond_14

    :cond_13
    if-eqz v5, :cond_26

    if-eqz v4, :cond_26

    :cond_14
    const/4 v15, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    move/from16 v0, v21

    float-to-int v11, v0

    move/from16 v0, v22

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v11, v0, Landroid/graphics/Rect;->left:I

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v11, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v11, v0, Landroid/graphics/Rect;->right:I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v12, v0, Landroid/graphics/Rect;->top:I

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v12, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v27

    :catchall_1
    move-exception v27

    :try_start_16
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_1c
    const/16 v18, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v27

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get3(Lcom/android/server/wm/TaskPositioner;)I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get14(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get12(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_10

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_12

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get17(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    const-string/jumbo v27, "wm.TaskPositioner.resizeTask"

    const-wide/16 v28, 0x20

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v27 .. v30}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_15
    const-wide/16 v28, 0x20

    :try_start_18
    invoke-static/range {v28 .. v29}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_28

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_UP @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get18(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v27

    if-nez v27, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result v27

    if-eqz v27, :cond_29

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get19(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->touchFocusTransferred()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set2(Lcom/android/server/wm/TaskPositioner;Z)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_29
    :goto_16
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v27, :cond_2a

    invoke-static {}, Lcom/android/server/wm/TaskPositioner;->-get1()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ACTION_CANCEL @ {"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_0

    :catchall_3
    move-exception v27

    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :catchall_4
    move-exception v27

    :try_start_1b
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27

    :catch_2
    move-exception v9

    goto/16 :goto_5

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get15(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/TaskPositioner;->-get16(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/wm/TaskPositioner;->-get20(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v29

    const/16 v30, 0x3

    invoke-interface/range {v27 .. v30}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_2

    :cond_2c
    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_2d
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_2e
    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_2f
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v27

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/TaskPositioner;->-get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/DimLayer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DimLayer;->isDimming()Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    move-result v19

    goto/16 :goto_4

    :cond_30
    const/16 v19, 0x0

    goto/16 :goto_4

    :catchall_5
    move-exception v27

    :try_start_1d
    monitor-exit v28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v27
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :catch_3
    move-exception v9

    goto/16 :goto_1

    :catch_4
    move-exception v13

    goto/16 :goto_16

    :catch_5
    move-exception v9

    goto/16 :goto_15

    :catch_6
    move-exception v13

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
