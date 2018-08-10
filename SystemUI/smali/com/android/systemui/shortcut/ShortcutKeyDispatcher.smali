.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mActivityManager:Landroid/app/IActivityManager;

    const-wide/high16 v0, 0x1000000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    const-wide v0, 0x200000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    const-wide v0, 0x100000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    const-wide v0, 0x1000000000047L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    const-wide v0, 0x1000000000048L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    return-void
.end method

.method private handleDockKey(J)V
    .locals 15

    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    const-class v10, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/Recents;

    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const/4 v12, 0x1

    const/4 v13, -0x2

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/android/systemui/recents/Recents;->showRecentApps(ZZ)V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v12, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v13, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v10}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v3, v13, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startTaskInDockedMode(IILandroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-class v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v10}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v10}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const-wide v10, 0x1000000000047L

    cmp-long v10, p1, v10

    if-nez v10, :cond_3

    invoke-virtual {v7, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v8

    :goto_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    iget v10, v8, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string/jumbo v10, "ShortcutKeyDispatcher"

    const-string/jumbo v11, "handleDockKey() failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v7, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_2
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    const-wide v2, 0x1000000000047L

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide v2, 0x1000000000048L

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    :cond_1
    return-void
.end method

.method public registerShortcutKey(J)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    const-wide v0, 0x1000000000047L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    const-wide v0, 0x1000000000048L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    return-void
.end method
