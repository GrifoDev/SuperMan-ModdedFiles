.class final Lcom/android/server/wm/MultiWindowManagerInternal$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final MULTIWINDOW_BEHAVIOR_LOG:I = 0x1

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_FROM_TAP_OUTSIDE:I = 0x12e

.field public static final MULTIWINDOW_DISMISS_GUIDE_WINDOW_FROM_TAP_OUTSIDE_TIMEOUT:I = 0x12f

.field public static final MULTIWINDOW_DOCKING_CANCEL_FREEFORM_TIMEOUT:I = 0x6b

.field public static final MULTIWINDOW_ENSURE_DOCKED_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_FAKED_RELAUNCH_ANIMATION_FINISHED:I = 0x69

.field public static final MULTIWINDOW_FAKED_RELAUNCH_ANIMATION_TIMEOUT:I = 0x6a

.field public static final MULTIWINDOW_FREEFORM_RELAUNCH_ANIM_FINISHED:I = 0x67

.field public static final MULTIWINDOW_FREEFORM_RELAUNCH_ANIM_TIMEOUT:I = 0x68

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK:I = 0x65

.field public static final MULTIWINDOW_MOVE_FREEFORM_TASK_TIMEOUT:I = 0x66

.field public static final MULTIWINDOW_SHOW_GUIDE_WINDOW_FROM_TAP_OUTSIDE:I = 0x12d

.field public static final MULTIWINDOW_SWAP_ANIMATION_TIMEOUT:I = 0xca

.field public static final NOTIFY_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0xcc

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0xcb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v17, "app_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const-string/jumbo v17, "feature"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0, v11, v9}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v17, "feature"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0, v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveTaskToFreeformStack(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/FreeformStackWindowController;->mTaskIdToLaunchBounds:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v17, "MultiWindowManagerInternal"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "MULTIWINDOW_MOVE_FREEFORM_TASK_TIMEOUT, taskId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v17

    const-string/jumbo v18, "complete"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v17

    const-string/jumbo v18, "timeout"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/16 v17, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v17

    const-string/jumbo v19, "complete"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v17

    const-string/jumbo v19, "timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->clearFakedRelaunchAnimTokensLocked(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/TaskPositioner;->hideDimLayer()V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v6, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v17, "MultiWindowManagerInternal"

    const-string/jumbo v18, "Failed to notify EnsureDockedResize"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get3(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get2(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ScreenFreezeAnimationController;->timeout()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_3
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    :sswitch_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyScreenFreezeAnimationFinished()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string/jumbo v17, "MultiWindowManagerInternal"

    const-string/jumbo v18, "Failed to notify ScreenFreezeAnimationFinished."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get1(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->notifyDockedTaskToBackTransitionFinished()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    const-string/jumbo v17, "MultiWindowManagerInternal"

    const-string/jumbo v18, "Failed to notify DockedTaskToBackTransitionFinished."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/wm/Task;

    if-nez v14, :cond_4

    return-void

    :cond_4
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v17

    const-string/jumbo v18, "tap_outside"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/FreeformStackWindowController;->showGuideWindow(Landroid/graphics/Rect;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v17

    const-string/jumbo v18, "tap_outside"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/FreeformStackWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MultiWindowManagerInternal$H;->this$0:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowManagerInternal;->-get0(Lcom/android/server/wm/MultiWindowManagerInternal;)Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v17

    const-string/jumbo v18, "timeout"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/FreeformStackWindowController;->dismissGuideWindow(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
        0xcc -> :sswitch_b
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_e
    .end sparse-switch
.end method
