.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mPropagateTaskStackChange:Z

.field private mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    new-instance v5, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v6, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v7, 0xe1

    invoke-direct {v5, v7, v6}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    new-instance v5, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const v5, 0x7f040125

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    if-eqz p2, :cond_6

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_6
    return-object v5
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;
    .locals 40

    const/16 v27, 0x0

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v5, :cond_0

    new-instance v27, Lcom/android/systemui/recents/RecentsImpl$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    :cond_0
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v5, :cond_d

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    move-object v4, v12

    :goto_0
    if-ltz v31, :cond_5

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v4

    :goto_2
    add-int/lit8 v31, v31, -0x1

    move-object v4, v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v30, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v29, v0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, v5, v30

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, v6, v29

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int v7, v7, v30

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int v9, v9, v29

    invoke-virtual {v8, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p4

    if-ne v5, v0, :cond_4

    move-object/from16 v28, v19

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v31

    if-ge v0, v5, :cond_16

    new-instance v12, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v12}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    move-object/from16 v14, v28

    goto/16 :goto_2

    :cond_4
    move-object v12, v4

    goto/16 :goto_2

    :cond_5
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_b

    if-eqz v14, :cond_b

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v32

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    cmpg-float v5, v32, v5

    if-gez v5, :cond_6

    const/4 v5, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    :cond_6
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v13, v18

    move-object/from16 v18, p3

    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    :cond_8
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    :cond_9
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    :cond_a
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    iget-object v6, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    :cond_c
    new-instance v15, Landroid/view/AppTransitionAnimationSpec;

    iget-object v5, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v16, v0

    const-wide/16 v20, 0x12c

    const-wide/16 v22, 0x85

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_12

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    :goto_4
    if-ltz v31, :cond_11

    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, p3

    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_e

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    :cond_f
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

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v31, v31, -0x1

    goto :goto_4

    :cond_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    :cond_12
    new-instance v37, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v37 .. v37}, Lcom/android/systemui/recents/model/Task;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v39

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_13

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v5, :cond_14

    :cond_13
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    if-eqz v17, :cond_15

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v20, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v5

    move/from16 v23, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v21, v17

    invoke-static/range {v20 .. v27}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    :cond_16
    move-object v12, v4

    move-object/from16 v14, v28

    goto/16 :goto_2
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

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

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
    .locals 8

    const v4, 0x7f0d030a

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x1050017

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    const v0, 0x1050018

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    const v0, 0x105001a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v0, :cond_0

    const v1, 0x7f0d030f

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    return-void

    :cond_0
    const v1, 0x7f0d0309

    goto :goto_0
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecentsActivity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iput v10, v7, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v7, v2}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_4

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v9, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v3, v5, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v9, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v9, :cond_6

    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;Z)V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-virtual {v8, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    iput-boolean p5, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedSplitScreenWithHelpPopup:Z

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

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const v3, 0x7f0500ad

    const v4, 0x7f0500af

    invoke-static {v0, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0500ac

    const v3, 0x7f0500ae

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    :goto_0
    const v3, 0x7f0500b0

    const v4, 0x7f0500b1

    invoke-static {v1, v3, v4, v2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecents(ZZ)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->hideRecentsWindow()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method hideRecentsWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    return v0
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v1

    return v1
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
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->preload()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reloadDisplayConfiguration()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    return-void
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

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsVisibility(Z)V

    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz v2, :cond_3

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {v1, v8, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    :cond_0
    invoke-direct {p0, v4, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
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
    .locals 15

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    :goto_0
    const/4 v12, 0x1

    if-lt v1, v12, :cond_3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_4

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0500b6

    const v14, 0x7f0500ab

    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    :cond_3
    :goto_1
    if-nez v11, :cond_6

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0500b7

    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    return-void

    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0500b9

    const v14, 0x7f0500b8

    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

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

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_0

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

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    if-nez p4, :cond_5

    move v7, p2

    :goto_1
    new-instance v9, Landroid/util/MutableBoolean;

    invoke-direct {v9, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    new-instance v8, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v8, v0}, Landroid/util/MutableInt;-><init>(I)V

    if-nez v7, :cond_6

    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    return-void

    :cond_5
    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v0, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_7

    move/from16 v2, p5

    :goto_3
    iget v5, v8, Landroid/util/MutableInt;->value:I

    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_3
.end method

.method showRecentsWindow()V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v8, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v7, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

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

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
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

    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v10, :cond_2

    return-void

    :cond_2
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v17

    if-eqz v17, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v13, :cond_5

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz p1, :cond_7

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0500b6

    const v19, 0x7f0500b5

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    :goto_1
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    :cond_5
    if-nez v15, :cond_a

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0500b4

    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0500b9

    const v19, 0x7f0500b8

    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0500b7

    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "overview_affiliated_task_launch"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    .locals 14

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_6

    if-eqz p1, :cond_6

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_0
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_0

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v11, :cond_1

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_7

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_7

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_1
    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v2, 0x1

    :goto_2
    if-eqz p1, :cond_2

    if-eqz p2, :cond_a

    :cond_2
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v11, :cond_b

    :cond_3
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v9, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_5
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput v6, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v0, p5

    iput v0, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v10

    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v11, :cond_4

    :cond_4
    if-nez v10, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    :cond_5
    invoke-direct {p0, v7, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v8

    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    if-nez p3, :cond_d

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    return-void

    :cond_6
    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_7
    sget-object v12, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_8

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v4, v12, v6, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    move v9, v2

    goto :goto_3

    :cond_b
    const/4 v11, 0x1

    goto :goto_4

    :cond_c
    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_e

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, p5

    invoke-direct {p0, p1, v11, v10, v0}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;

    move-result-object v5

    :goto_7
    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    return-void

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_7

    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_7
.end method

.method public toggleRecents(I)V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecentsWindow()V

    return-void

    :cond_1
    :try_start_0
    new-instance v12, Landroid/util/MutableBoolean;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v10, v2, v4

    new-instance v9, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v9, v0}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {p0, v12, v9}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v13

    iget-boolean v0, v13, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v0, :cond_5

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_4

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-gez v0, :cond_4

    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v2, v12, Landroid/util/MutableBoolean;->value:Z

    iget v5, v9, Landroid/util/MutableInt;->value:I

    const/4 v3, 0x1

    move-object v0, p0

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V

    const-string/jumbo v0, "recentapps"

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method toggleRecentsWindow()V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

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

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
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

    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method
