.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$2;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field protected static sLastPipTime:J


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field mLastStack:Lcom/android/systemui/recents/model/TaskStack;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mPropagateTaskStackChange:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/desktop/RecentsWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/desktop/RecentsWindow;)Lcom/android/systemui/recents/desktop/RecentsWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v3, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v4, 0xe1

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    new-instance v2, Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "TaskLockPreference"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->transferTaskLockPref(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->updateDefaultTaskLockIfNeeded()V

    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static clearLastPipTime()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;
    .locals 10

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    if-eqz p2, :cond_4

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    :goto_0
    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v1, v5

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    int-to-float v5, v4

    iget v8, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    :goto_1
    invoke-virtual {v7, v5, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    iget v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    :goto_2
    const/4 v9, 0x0

    invoke-static {v4, v7, v8, v5, v9}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->drawViewIntoGraphicBuffer(IILandroid/view/View;FI)Landroid/graphics/GraphicBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_4
    return-object v6
.end method

.method public static getLastPipTime()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-wide v0
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)Landroid/util/Pair;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;",
            ">;"
        }
    .end annotation

    const/16 v33, 0x0

    new-instance v33, Lcom/android/systemui/recents/RecentsImpl$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl$5;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-eqz v5, :cond_b

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v28, v5, -0x1

    move-object v4, v12

    :goto_0
    if-ltz v28, :cond_3

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v26, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, v5, v27

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, v6, v26

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int v7, v7, v27

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int v9, v9, v26

    invoke-virtual {v8, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v4

    :goto_1
    add-int/lit8 v28, v28, -0x1

    move-object v4, v12

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_2

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v24, v19

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v28

    if-ge v0, v5, :cond_11

    new-instance v12, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v12}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p2

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    move-object/from16 v14, v24

    goto :goto_1

    :cond_2
    move-object v12, v4

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v29

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    cmpg-float v5, v29, v5

    if-gez v5, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    :cond_4
    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v13, v18

    move-object/from16 v18, p2

    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutTopCenter(Landroid/graphics/RectF;F)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->getThumbnailTransitionTarget(Landroid/content/Context;)Landroid/graphics/RectF;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v17

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    :cond_7
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v17, :cond_8

    new-instance v5, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_8
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    iget-object v6, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, p0

    invoke-static {v6, v0, v7, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_a
    new-instance v15, Landroid/view/AppTransitionAnimationSpec;

    iget-object v5, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v16, v0

    const-wide/16 v20, 0x12c

    const-wide/16 v22, 0x85

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v6

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v6

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v28, v5, -0x1

    :goto_3
    if-ltz v28, :cond_e

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {v32 .. v32}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, p2

    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutTopCenter(Landroid/graphics/RectF;F)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v17

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v28, v28, -0x1

    goto :goto_3

    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_e
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, p0

    invoke-static {v6, v0, v7, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_f
    new-instance v35, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v35 .. v35}, Lcom/android/systemui/recents/model/Task;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v37

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutTopCenter(Landroid/graphics/RectF;F)V

    :cond_10
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    new-instance v5, Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-result-object v25

    new-instance v5, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v0, v33

    invoke-static {v6, v7, v9, v0, v11}, Landroid/app/ActivityOptions;->makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_11
    move-object v12, v4

    move-object/from16 v14, v24

    goto/16 :goto_1
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v2
.end method

.method static synthetic lambda$-com_android_systemui_recents_RecentsImpl_77120(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 2

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v1, "startRecentsActivity - hideMenuEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private preloadIcon(I)V
    .locals 4

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method private reloadResources()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    const v2, 0x1050158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    const v2, 0x105015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0706bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d017a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f070395

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    goto :goto_0

    :cond_1
    const v2, 0x7f0705a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    goto :goto_0
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10804000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrDocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsOverrideRecents()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "override Recents Activity for Gear VR "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.samsung.android.hmt.vrsvc"

    const-string/jumbo v3, "com.samsung.android.hmt.vrsvc.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    new-instance v2, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->precacheSpecs()V

    :cond_1
    return-void
.end method

.method private transferTaskLockPref(Ljava/lang/String;Z)V
    .locals 13

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    return-void

    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    const/4 v11, 0x0

    invoke-interface {v6, v4, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v8, -0x2710

    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v11

    invoke-virtual {v11, v4, v8, v10}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v8

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    invoke-interface {v6, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    :goto_2
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v11

    invoke-virtual {v11, v9, v8, v7}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Ljava/lang/String;ILjava/util/Set;)V

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iput v4, v8, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v8, p2, v1}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v9

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_1

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v9

    throw v2
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 11

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v4

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeAllTasks(Z)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6, v8, v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    float-to-int v3, v6

    :cond_0
    :goto_0
    monitor-exit v7

    if-eqz p1, :cond_4

    if-lez v3, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v6

    if-ne v6, v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v6

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v6, v8, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v3, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-virtual {v7, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    if-nez p2, :cond_1

    move v2, v4

    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsImpl"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " [0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPropagateTaskStackChange="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mLastToggleTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected getGearVrTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100a8

    const v3, 0x7f0100a9

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const v3, 0x7f0100ab

    const v4, 0x7f0100ad

    invoke-static {v0, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const v3, 0x7f0100ae

    const v4, 0x7f0100af

    invoke-static {v0, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, "RecentsImpl"

    const-string/jumbo v4, "Launching home request but recents is not visible"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RecentsImpl"

    const-string/jumbo v4, "Could not start home"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v4, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_34325()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget-boolean v7, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    invoke-direct {p0, v4, v8}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsImpl_65038(Landroid/graphics/RectF;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Ljava/util/List;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/AppTransitionAnimationSpec;

    new-instance v3, Landroid/view/AppTransitionAnimationSpec;

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v4, v1, v0}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public onAnimationFinished()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "RecentsImpl"

    const-string/jumbo v4, "onBootCompleted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearActivityInfoCache()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearLabelCache()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->clearIconCache()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBlacklist:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->updateBlacklistPackages()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_SystemUI_SupportRecentAppProtection"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "RecentLock"

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/recents/RecentsImpl;->transferTaskLockPref(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->onConfigurationChanged()V

    :cond_0
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->reloadResourcesForAppLock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDraggingInRecents(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method onLayoutModeChanged()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v7, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v7}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v7, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v7}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string/jumbo v7, "RecentsImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStartScreenPinning: getComponent again. statusBar="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", context="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_4

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    iget-object v7, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v7, p2, :cond_1

    iget-object v1, v4, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    const/high16 v9, 0x800000

    and-int/2addr v7, v9

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    monitor-exit v8

    invoke-virtual {v3, p2, v10, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZLjava/lang/String;Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public onStartSnapView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerPanel;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/DividerPanel;

    const-string/jumbo v2, "RecentsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStartSnapView: getComponent again. divider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/stackdivider/DividerPanel;->showSnapWindowGuideView(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    return-void
.end method

.method public preloadRecents()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$Lambda$pgmD0Bxm8kFYR7cdcGYk6DUhgds;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    return-void
.end method

.method public showNextTask()V
    .locals 19

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrDocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsIncludeVrTasks()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :goto_0
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v12, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    if-nez v13, :cond_3

    return-void

    :cond_3
    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v10

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    :goto_1
    const/4 v2, 0x1

    if-lt v9, v2, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    if-eqz v10, :cond_7

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b4

    const v4, 0x7f0100a6

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    :cond_4
    :goto_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrDocked()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsUseVrTransition()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v18, 0x1

    :cond_5
    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getGearVrTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    :cond_6
    if-nez v17, :cond_a

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100a7

    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    return-void

    :cond_7
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b7

    const v4, 0x7f0100b6

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_2

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b5

    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 11

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showRecentsWindow()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    if-nez p4, :cond_7

    move v7, p2

    :goto_1
    new-instance v9, Landroid/util/MutableBoolean;

    invoke-direct {v9, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v8, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v8, v0}, Landroid/util/MutableInt;-><init>(I)V

    if-nez v7, :cond_2

    invoke-virtual {v10, v9, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v0, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_8

    move/from16 v2, p5

    :goto_2
    iget v5, v8, Landroid/util/MutableInt;->value:I

    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    return-void

    :cond_7
    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method showRecentsWindow()V
    .locals 10

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v9, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v8, v9}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v8}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v8}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    :cond_4
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v7, v5, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    iput v5, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v13

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11, v13, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-nez v14, :cond_2

    return-void

    :cond_2
    iget v2, v14, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, v3, :cond_8

    iget-object v9, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz p1, :cond_7

    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b4

    const v4, 0x7f0100b3

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    :goto_1
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v12

    :cond_5
    if-nez v18, :cond_a

    const/4 v2, 0x1

    if-le v12, v2, :cond_6

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b2

    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-virtual {v9, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b7

    const v4, 0x7f0100b6

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_1

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0100b5

    invoke-static {v2, v3}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "overview_affiliated_task_launch"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    .locals 19

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isBlackListedActivity(Landroid/content/ComponentName;)Z

    move-result v5

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    xor-int/lit8 v16, v5, 0x1

    if-eqz v16, :cond_7

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    sget-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v16, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v16

    sput-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    sget-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_3

    :cond_2
    sget-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    xor-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v9, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_3
    sget-object v16, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v16

    if-lez v16, :cond_8

    const/4 v4, 0x1

    :goto_2
    if-eqz p1, :cond_9

    xor-int/lit8 v16, p2, 0x1

    if-eqz v16, :cond_9

    move v14, v4

    :goto_3
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    xor-int/lit8 v16, v16, 0x1

    :goto_4
    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    :goto_5
    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    move/from16 v16, v5

    :goto_6
    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromBlacklistedApp:Z

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput v9, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v0, p5

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v15

    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v16, :cond_4

    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :cond_4
    if-nez v15, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v15

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    monitor-exit v17

    iget v0, v12, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x8

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    :goto_7
    if-nez p3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-static/range {v16 .. v18}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    return-void

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v9, -0x1

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    :cond_d
    iget v0, v12, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    goto :goto_7

    :cond_e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsEnabled()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrDocked()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isGearVrRecentsUseVrTransition()Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v13, 0x1

    :cond_f
    if-eqz v5, :cond_10

    new-instance v8, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityOptions;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    return-void

    :cond_10
    if-eqz v13, :cond_11

    new-instance v8, Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v15, v2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)Landroid/util/Pair;

    move-result-object v8

    goto :goto_8

    :cond_12
    new-instance v8, Landroid/util/Pair;

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    :goto_9
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v16

    goto :goto_9
.end method

.method public toggleRecents(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v4, "isDesktopMode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecentsWindow()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    const-string/jumbo v4, "recentapps"

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v17

    new-instance v14, Landroid/util/MutableBoolean;

    const/4 v2, 0x1

    invoke-direct {v14, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v12, v4, v6

    new-instance v11, Landroid/util/MutableInt;

    const/4 v2, -0x1

    invoke-direct {v11, v2}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v9

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v2, :cond_7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v12, v4

    if-gez v2, :cond_2

    const/4 v15, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v2, :cond_4

    if-eqz v15, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_1
    return-void

    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v4, "Failed to launch RecentsActivity"

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v15, :cond_6

    :cond_5
    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v4, "QuickTap"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(IZ)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_7
    const-wide/16 v4, 0x15e

    cmp-long v2, v12, v4

    if-gez v2, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_1

    :cond_9
    const-wide/16 v4, 0x15e

    cmp-long v2, v12, v4

    if-gez v2, :cond_a

    return-void

    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v4, v14, Landroid/util/MutableBoolean;->value:Z

    iget v7, v11, Landroid/util/MutableInt;->value:I

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V

    const-string/jumbo v2, "recentapps"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method toggleRecentsWindow()V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_6

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    sput-object v6, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v7, v0, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v6, v4, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iput v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    :cond_6
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public final updateDefaultTaskLockIfNeeded()V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_SystemUI_ConfigRecentDefaultLockList"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveDefaultLockedPackage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
