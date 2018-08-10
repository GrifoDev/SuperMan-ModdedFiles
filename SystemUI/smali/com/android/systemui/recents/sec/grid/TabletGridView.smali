.class public Lcom/android/systemui/recents/sec/grid/TabletGridView;
.super Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;
.source "TabletGridView.java"


# instance fields
.field mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

.field mClipToUpperBound:Z

.field mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mScrollListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

.field mStableSystemInsets:Landroid/graphics/Rect;

.field mTouchHandler:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateSystemInsetsForSplitLayout(Lcom/android/systemui/recents/model/TaskStack$DockState;Lcom/android/systemui/recents/sec/base/LayoutConfiguration;)Landroid/graphics/Rect;
    .locals 7

    new-instance v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStableSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredWidth:I

    iget v2, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredHeight:I

    iget v3, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;

    move-result-object v6

    iget v0, p1, Lcom/android/systemui/recents/model/TaskStack$DockState;->dockSide:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v4

    :pswitch_0
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_1
    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :pswitch_2
    iget v0, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :pswitch_3
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dragReturningAnimation(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getHolderForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-nez v0, :cond_0

    const-string/jumbo v5, "TabletRecents_TabletGridView"

    const-string/jumbo v6, "Fail to find the holder of %s in dragReturning"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x2

    new-array v2, v5, [I

    iget-object v5, v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/CardView;->getLocationInWindow([I)V

    aget v5, v2, v9

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v6

    sub-float v1, v5, v6

    aget v5, v2, v7

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v6

    sub-float v4, v5, v6

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget-object v5, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    new-instance v6, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v7, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    const/16 v8, 0x64

    invoke-direct {v6, v8, v7}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    new-instance v7, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v6

    invoke-virtual {v5, p1, v3, v6}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_sec_grid_TabletGridView_26244(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    return-void
.end method

.method private launchTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->scrollToPosition(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method private startTaskViewDragging(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-nez v0, :cond_0

    const-string/jumbo v2, "TabletRecents_TabletGridView"

    const-string/jumbo v3, "Fail to find the holder of %s in startDragging"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->prepareDragging(Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    const v2, 0x3f866666    # 1.05f

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    return-object v0
.end method


# virtual methods
.method public cancelAllTaskViewAnimations()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-static {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->cancelLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    return-void
.end method

.method public detachChildViews()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->detachChildViews()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v4, "TabletRecents_TabletGridView"

    const-string/jumbo v5, "detachChildViews() remains: %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "TabletRecents_TabletGridView"

    const-string/jumbo v5, "detachChildViews() still remains: %d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getAdapter()Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getHolderForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTaskView()Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    return-object v0
.end method

.method public getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    return-object v0
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method synthetic lambda$-com_android_systemui_recents_sec_grid_TabletGridView_19293(Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->launchTask(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setClipToPadding(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 6

    const-string/jumbo v3, "TabletRecents_TabletGridView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBusEvent(ConfigurationChangedEvent), fromMultiWindow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fromDeviceOrientationChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fromDisplayDensityChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hasStackTasks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fromScreenSizeChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromScreenSizeChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromScreenSizeChange:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->update(Landroid/content/Context;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    iget-object v4, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onConfigurationChanged(ILandroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v3, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    iput v4, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    invoke-static {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->updateSpanCountIfNeeded()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "TabletRecents_TabletGridView"

    const-string/jumbo v1, "onBusEvent(DismissRecentsToHomeAnimationStarted)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->startExitTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 0

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x13e

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pip"

    invoke-static {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v7, v4}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/CancelHideRecentsEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/CancelHideRecentsEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pip"

    invoke-static {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getNextLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    new-instance v2, Lcom/android/systemui/recents/sec/grid/-$Lambda$b-oCbg3HzWHThZmJR5dSfs4fyow$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recents/sec/grid/-$Lambda$b-oCbg3HzWHThZmJR5dSfs4fyow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->startTaskViewDragging(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->cancelAllTaskViewAnimations()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v6, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->hidePairedTask()V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget v4, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    if-ne v4, v6, :cond_2

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->calculateSystemInsetsForSplitLayout(Lcom/android/systemui/recents/model/TaskStack$DockState;Lcom/android/systemui/recents/sec/base/LayoutConfiguration;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->relayoutTaskViews(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    return-void

    :cond_2
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    if-ne v5, v6, :cond_0

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "TabletRecents_TabletGridView"

    const-string/jumbo v3, "onBusEvent(UnlockTaskEvent)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x7f120992

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f120a27

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x121

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-nez v4, :cond_3

    const-string/jumbo v3, "FULL"

    :goto_0
    const-string/jumbo v4, "TabletRecents_TabletGridView"

    const-string/jumbo v5, "onBusEvent(DragDropTargetChangedEvent) to [%s]"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->cancelAllTaskViewAnimations()V

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v7, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getHolderForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->preserveDraggedTaskHolder(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->hidePairedTask()V

    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    iget-object v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->calculateSystemInsetsForSplitLayout(Lcom/android/systemui/recents/model/TaskStack$DockState;Lcom/android/systemui/recents/sec/base/LayoutConfiguration;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_2
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iput-boolean v7, v4, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->relayoutTaskViews(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iput-boolean v8, v4, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    :cond_2
    return-void

    :cond_3
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "TabletRecents_TabletGridView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to find the holder to preserve. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    iput v5, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->showAllTasks()V

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStableSystemInsets:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->dragReturningAnimation(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->dragReturningAnimation(Lcom/android/systemui/recents/views/TaskView;)V

    return-void

    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->preserveDraggedTaskHolder(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/recents/sec/grid/-$Lambda$b-oCbg3HzWHThZmJR5dSfs4fyow;

    invoke-direct {v4, v0}, Lcom/android/systemui/recents/sec/grid/-$Lambda$b-oCbg3HzWHThZmJR5dSfs4fyow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v3, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    :goto_1
    new-instance v4, Lcom/android/systemui/recents/sec/grid/TabletGridView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView$2;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->startTaskViewDragging(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->create(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mReusingAdapter:Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mScrollListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mTouchHandler:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStableSystemInsets:Landroid/graphics/Rect;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setClipToPadding(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mClipToUpperBound:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setFadingEdgeLength(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->updateSpanCountIfNeeded()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setClipToPadding(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareEnterAnimationAfterLayout()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->scrollToPosition(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;

    invoke-direct {v3, v0}, Lcom/android/systemui/recents/events/ui/ToggleButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    invoke-direct {v3, v0}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->startEnterTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onReload(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onReload(Z)V

    invoke-static {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->resetViewAttrs(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->setLayoutChangeAnimRunning(Z)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZZ)V
    .locals 3

    invoke-super/range {p0 .. p7}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZZ)V

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v2

    iget-boolean v1, v2, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mScreenPinningEnabled:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mTouchHandler:Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public relayoutTaskViews(Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->updateSpanCountIfNeeded()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAdapter()Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getLayoutManager()Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    move v2, v0

    :goto_0
    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->updateOpacity()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->setSystemInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mStableSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public startLayoutTypeChangeExitAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "TabletRecents_TabletGridView"

    const-string/jumbo v1, "startLayoutTypeChangeExitAnimation()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->flushLastDecrementRunnables()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mAnimationHelper:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->startExitTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-void
.end method

.method protected updatePadding(II)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->updatePadding(II)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mClipToUpperBound:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getMeasuredWidth()I

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getMeasuredHeight()I

    move-result v4

    if-eq p2, v4, :cond_2

    :cond_0
    :goto_0
    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getPaddingTop()I

    move-result v2

    invoke-direct {v1, v3, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setClipBounds(Landroid/graphics/Rect;)V

    const-string/jumbo v2, "TabletRecents_TabletGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clipBounds updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    move v2, v3

    goto :goto_0
.end method
