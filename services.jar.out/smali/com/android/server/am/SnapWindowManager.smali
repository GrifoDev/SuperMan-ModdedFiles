.class public Lcom/android/server/am/SnapWindowManager;
.super Ljava/lang/Object;
.source "SnapWindowManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SnapWindowManager"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mH:Landroid/os/Handler;

.field private mHandleNonResizeableTask:Z

.field private mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

.field private mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

.field private mSnapWindowResizing:Z

.field mSnapWindowRunning:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mHandleNonResizeableTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    iput-object p1, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p3, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {p3}, Lcom/android/server/am/MultiWindowManagerService;->getScreenFreezeAnimationManager()Lcom/android/server/am/ScreenFreezeAnimationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    return-void
.end method

.method private swapTasksForSnapWindowLocked()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v21

    :goto_1
    if-eqz v2, :cond_0

    if-nez v21, :cond_3

    :cond_0
    const-string/jumbo v4, "SnapWindowManager"

    const-string/jumbo v6, "Unable to swap tasks, either docked or fullscreen stack is empty."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZ)V

    const-string/jumbo v9, "swapTasksForSnapWindowLocked - DockedStack"

    const/4 v3, 0x3

    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v16, 0x1

    add-int/lit8 v17, v20, -0x1

    :goto_2
    if-ltz v17, :cond_7

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    :cond_5
    if-eqz v16, :cond_6

    const v5, 0x7fffffff

    :goto_4
    const-string/jumbo v10, "swapTasksForSnapWindowLocked - FullScreenStack"

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;Z)Z

    if-eqz v16, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    const/16 v16, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    iget-object v4, v14, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v12, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/graphics/Rect;

    iget-object v4, v15, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1120096

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1050158

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v4, v18

    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    :cond_8
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_4
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_1
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_6
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/SnapWindowInternal;->getSnapTargetAspectRatioRect(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    :try_start_8
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_0
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method handleNonResizeableTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/SnapWindowManager;->mHandleNonResizeableTask:Z

    return-void
.end method

.method isSnapWindowRunning()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method performDisplayOverrideConfigUpdate(II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/SnapWindowManager;->isSnapWindowRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_1

    const-string/jumbo v0, "config-orientation"

    const-string/jumbo v1, "finish"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    const-string/jumbo v0, "config-density"

    const-string/jumbo v1, "finish"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskWindowContainerController;->scrollTask(Landroid/graphics/Rect;)V

    return-void
.end method

.method setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "called by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .locals 52

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v37

    if-gtz v37, :cond_0

    return-void

    :cond_0
    const/16 v44, 0x0

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v35

    if-nez v35, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v36

    if-nez v36, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v51

    if-nez v51, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapWindowInternal;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    new-instance v8, Landroid/graphics/Rect;

    sub-int v3, v17, v50

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-direct {v8, v4, v5, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v28

    const/4 v3, 0x1

    move-object/from16 v0, v36

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapWindowInternal;->setIgnoreMinimizeDocked(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapTargetFullscreen(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v36

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapWindowInternal;->setIgnoreMinimizeDocked(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, v36

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v43

    iput v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v0, v37

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowResizing:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    move-object/from16 v0, v51

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v42

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/SnapWindowInternal;->adjOffsetForSnapWindowTarget(Landroid/os/IBinder;I)I

    move-result v42

    new-instance v48, Landroid/graphics/Rect;

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v42

    neg-int v3, v0

    move-object/from16 v0, v48

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v43

    move-object/from16 v1, v48

    iput v0, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v17, v50

    sub-int v3, v3, v42

    move-object/from16 v0, v48

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    sget-boolean v3, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "SnapWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "snap target full screen tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " region : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v44, v36

    :cond_6
    :goto_0
    if-eqz v44, :cond_7

    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_13

    move-object/from16 v0, v44

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->logSnapWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    :cond_9
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/SnapWindowManager;->swapTasksForSnapWindowLocked()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v29

    if-nez v29, :cond_b

    return-void

    :cond_b
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v30

    if-nez v30, :cond_c

    return-void

    :cond_c
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v28

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    const/16 v33, 0xc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v33

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZI)V

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v37

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    new-instance v48, Landroid/graphics/Rect;

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v42

    neg-int v3, v0

    move-object/from16 v0, v48

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v48

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v3, v42

    move-object/from16 v0, v48

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v46, v3, -0x1

    :goto_3
    if-ltz v46, :cond_f

    move-object/from16 v0, v47

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget v0, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v45, v0

    if-eqz v45, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_f
    sget-boolean v3, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string/jumbo v4, "SnapWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "snap target "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_12

    const-string/jumbo v3, "A "

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " tid : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " region : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v44, v30

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v46, v46, -0x1

    goto :goto_3

    :cond_12
    const-string/jumbo v3, "B "

    goto :goto_4

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    if-nez v3, :cond_15

    return-void

    :cond_15
    const-string/jumbo v3, "remove task"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const-string/jumbo v3, "swap tasks"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    const-string/jumbo v3, "resize docked size null"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    const-string/jumbo v3, "config-orientation"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const-string/jumbo v3, "config-density"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const-string/jumbo v3, "snap task to back"

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_16

    const/16 v25, 0x1

    :goto_5
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_17

    const/16 v21, 0x1

    :goto_6
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_18

    const/16 v19, 0x1

    :goto_7
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    const/16 v20, 0x1

    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v29

    if-nez v29, :cond_1a

    return-void

    :cond_16
    const/16 v25, 0x0

    goto :goto_5

    :cond_17
    const/16 v21, 0x0

    goto :goto_6

    :cond_18
    const/16 v19, 0x0

    goto :goto_7

    :cond_19
    const/16 v20, 0x0

    goto :goto_8

    :cond_1a
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v30

    if-nez v30, :cond_1b

    return-void

    :cond_1b
    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService;->isLaunchingPairActivitiesLocked()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string/jumbo p4, "remove task by pair apps"

    :cond_1c
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v3, :cond_1f

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v49

    const/16 v41, 0x1

    const/16 v38, 0x0

    :goto_9
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v38

    if-ge v0, v3, :cond_1d

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-eqz v3, :cond_1e

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/TaskRecord;

    const/16 v41, 0x0

    :cond_1d
    if-eqz v41, :cond_1f

    return-void

    :cond_1e
    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    :cond_1f
    if-eqz v19, :cond_20

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapWindowInternal;->saveSnapShotAdjustedBounds(Landroid/os/IBinder;)V

    :cond_20
    move-object/from16 v0, v30

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v10, :cond_21

    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-nez v3, :cond_21

    if-eqz v26, :cond_22

    :cond_21
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x2

    invoke-virtual {v3, v10, v4}, Lcom/android/server/wm/SnapWindowInternal;->getMiddleTargetDockedBounds(Landroid/graphics/Rect;I)V

    :cond_22
    if-nez v22, :cond_23

    if-eqz v18, :cond_2a

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/SnapWindowInternal;->adjStackBoundsForSnapWindow()V

    :cond_24
    :goto_a
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v28

    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    if-eqz v3, :cond_25

    if-eqz v23, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setSnapWindowDeferAnimation(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapWindowTarget(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/SnapWindowInternal;->setTaskToSnapTargetFullscreen(Lcom/android/server/wm/TaskWindowContainerController;Z)Z

    if-nez v26, :cond_26

    if-nez v24, :cond_26

    if-nez v20, :cond_26

    if-eqz v23, :cond_27

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mH:Landroid/os/Handler;

    const/16 v4, 0xce

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mH:Landroid/os/Handler;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v3, Lcom/android/server/am/SnapWindowManager;->DEBUG:Z

    if-eqz v3, :cond_28

    const-string/jumbo v3, "SnapWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "un-snapped tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/16 v31, 0x0

    if-eqz v25, :cond_32

    const-string/jumbo v31, "DividerDragging"

    :cond_29
    :goto_b
    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    const-string/jumbo v4, "SNOF"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2a
    if-nez v27, :cond_24

    const/16 v39, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/SnapWindowManager;->mHandleNonResizeableTask:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZ)V

    const/16 v39, 0x0

    :cond_2b
    if-nez v39, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimationController()Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenFreezeAnimationController;->isScreenFreezeAnimationSet()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    const/16 v39, 0x1

    :cond_2c
    if-eqz v39, :cond_2f

    const/16 v32, 0x4

    if-nez v19, :cond_2d

    if-eqz v20, :cond_30

    :cond_2d
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    const/16 v32, 0xc

    :cond_2e
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mScreenFreezeMng:Lcom/android/server/am/ScreenFreezeAnimationManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v32

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/ScreenFreezeAnimationManager;->startSplitResizeAnimForSnapWindowLocked(ZZZI)V

    :cond_2f
    if-eqz v26, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/SnapWindowInternal;->deferReportDrawn()V

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/SnapWindowInternal;->continueReportDrawn()V

    goto/16 :goto_a

    :cond_30
    if-eqz v21, :cond_2e

    const/16 v32, 0x17

    goto :goto_c

    :cond_31
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/SnapWindowManager;->scrollTask(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    :cond_32
    if-nez v22, :cond_33

    if-eqz v18, :cond_34

    :cond_33
    const-string/jumbo v31, "OrientationChanged"

    goto/16 :goto_b

    :cond_34
    if-eqz v20, :cond_29

    const-string/jumbo v31, "DividerFinishButton"

    goto/16 :goto_b
.end method

.method setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method showSnapWindowGuideView(I)V
    .locals 14

    const/high16 v12, 0x41100000    # 9.0f

    iget-object v10, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v9, p0, Lcom/android/server/am/SnapWindowManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    if-nez v7, :cond_2

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowInternal:Lcom/android/server/wm/SnapWindowInternal;

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v9, v11}, Lcom/android/server/wm/SnapWindowInternal;->getFullScreenStackTopTaskBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    packed-switch p1, :pswitch_data_0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_4

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    const/high16 v9, 0x42400000    # 48.0f

    :try_start_5
    iget-object v11, p0, Lcom/android/server/am/SnapWindowManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    int-to-float v3, v9

    goto :goto_0

    :pswitch_2
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41800000    # 16.0f

    div-float v3, v9, v11

    goto :goto_0

    :pswitch_3
    int-to-float v9, v8

    mul-float/2addr v9, v12

    const/high16 v11, 0x41a80000    # 21.0f

    div-float v3, v9, v11

    goto :goto_0

    :cond_4
    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    const-class v9, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v6, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appRequest"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showSnapWindowGuideView(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
