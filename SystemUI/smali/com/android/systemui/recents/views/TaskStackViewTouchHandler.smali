.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static LIST_LAYOUT_SCROLL_ACCELERATION_RATE:F

.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mContext:Landroid/content/Context;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastY:I

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mOverScrollAnim:Landroid/animation/ObjectAnimator;

.field mOverscrollSize:I

.field mScrollFlingAnimator:Landroid/animation/ValueAnimator;

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field private final mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const v4, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3e333333    # 0.175f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    const v1, 0x40ad1eb8    # 5.41f

    sput v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->LIST_LAYOUT_SCROLL_ACCELERATION_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    new-instance v2, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    :goto_0
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;

    invoke-direct {v2, p0, v4, p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/SwipeHelper;->setDisableHardwareLayers(Z)V

    return-void

    :cond_0
    const v2, 0x7f07055e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    goto :goto_0
.end method

.method private findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v0, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v2, v10, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    if-ltz v11, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v2, v39, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v40

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v2, v3, :cond_4

    move/from16 v0, v41

    move/from16 v1, v40

    if-le v0, v1, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    :goto_1
    if-ltz v18, :cond_2

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V

    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-eqz v32, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x11f

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->LIST_LAYOUT_SCROLL_ACCELERATION_RATE:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v5, v2

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(II)F

    move-result v16

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float v14, v2, v16

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_d

    cmpg-float v2, v14, v26

    if-lez v2, :cond_6

    cmpl-float v2, v14, v24

    if-ltz v2, :cond_9

    :cond_6
    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v13

    sub-float v30, v14, v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v31, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v31

    const v3, 0x3f7851ec    # 0.97f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v35

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v31

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    sub-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    :cond_7
    cmpl-float v2, v14, v24

    if-lez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMarginTopButtonsContainer:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setPivotY(F)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v12}, Lcom/android/systemui/recents/views/TaskStackView;->setAlpha(F)V

    cmpg-float v2, v14, v26

    if-gtz v2, :cond_c

    move/from16 v14, v26

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    sub-float v7, v14, v7

    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->updateY(I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    if-gez v2, :cond_f

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_b
    cmpg-float v2, v14, v26

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setPivotY(F)V

    goto/16 :goto_2

    :cond_c
    cmpl-float v2, v14, v24

    if-ltz v2, :cond_9

    move/from16 v14, v24

    goto/16 :goto_3

    :cond_d
    cmpg-float v2, v14, v26

    if-ltz v2, :cond_e

    cmpl-float v2, v14, v24

    if-lez v2, :cond_9

    :cond_e
    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v13

    sub-float v30, v14, v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x40155555

    div-float v31, v2, v3

    sget-object v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    move/from16 v0, v31

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const v3, 0x40155555

    mul-float v3, v3, v20

    mul-float/2addr v2, v3

    add-float v14, v13, v2

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    if-lez v2, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/ui/ToggleCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v34

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v33

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v33

    if-ne v0, v2, :cond_10

    if-nez v34, :cond_11

    const/16 v29, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_11
    const/16 v29, 0x0

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    if-ltz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getOverScrollAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_14
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    goto :goto_6

    :cond_16
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v28, v2, v3

    const/4 v15, 0x1

    const v23, 0x453b8000    # 3000.0f

    const/high16 v22, 0x42dc0000    # 110.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide v8, 0x3ff6666666666666L    # 1.4

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_17

    const v23, 0x44bb8000    # 1500.0f

    const/high16 v22, 0x42700000    # 60.0f

    :cond_17
    int-to-float v2, v6

    cmpg-float v2, v2, v23

    if-gez v2, :cond_18

    int-to-float v2, v6

    move/from16 v0, v23

    neg-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    move/from16 v0, v28

    int-to-float v2, v0

    cmpl-float v2, v2, v22

    if-lez v2, :cond_18

    const/4 v15, 0x0

    :cond_18
    int-to-float v2, v6

    cmpl-float v2, v2, v23

    if-lez v2, :cond_1b

    int-to-float v2, v6

    const v3, 0x46290a29

    add-float/2addr v2, v3

    sub-float v2, v23, v2

    const v3, 0x3851b717    # 5.0E-5f

    mul-float/2addr v2, v3

    int-to-float v3, v6

    const v4, 0x46290a29

    add-float/2addr v3, v4

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    const v3, 0x4531b948

    sub-float/2addr v2, v3

    float-to-int v6, v2

    :cond_19
    :goto_8
    neg-int v2, v6

    int-to-float v2, v2

    div-float v2, v2, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v2, v0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1c

    const/16 v37, -0x1

    :cond_1a
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v37, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0xdc

    const/16 v3, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x44c

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-int v3, v37, v15

    int-to-float v3, v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_1b
    int-to-float v2, v6

    move/from16 v0, v23

    neg-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_19

    neg-int v2, v6

    int-to-float v2, v2

    const v3, 0x46290a29

    add-float/2addr v2, v3

    sub-float v2, v23, v2

    const v3, 0x3851b717    # 5.0E-5f

    mul-float/2addr v2, v3

    neg-int v3, v6

    int-to-float v3, v3

    const v4, 0x46290a29

    add-float/2addr v3, v4

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    const v3, 0x4531b948

    sub-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v6, v2, -0x1

    goto :goto_8

    :cond_1c
    move/from16 v0, v37

    int-to-float v2, v0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    float-to-int v0, v2

    move/from16 v37, v0

    goto :goto_9

    :cond_1d
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-le v2, v3, :cond_13

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v25, v0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->LIST_LAYOUT_SCROLL_ACCELERATION_RATE:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v5, v2

    int-to-float v2, v6

    sget v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->LIST_LAYOUT_SCROLL_ACCELERATION_RATE:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    if-gt v2, v5, :cond_20

    const/4 v5, 0x0

    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    move/from16 v0, v27

    float-to-int v7, v0

    move/from16 v0, v25

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    if-lt v2, v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    goto/16 :goto_7

    :pswitch_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private isSwipingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateTaskViewTransforms(F)V
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    sget-object v9, Lcom/android/systemui/recents/misc/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/systemui/recents/misc/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    iget v11, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public cancelNonDismissTaskAnimations()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    :cond_2
    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    return-object v0

    :cond_2
    return-object v3
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getOverScrollAnimator()Landroid/animation/ObjectAnimator;
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getScaleX()F

    move-result v4

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getScaleY()F

    move-result v4

    aput v4, v3, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverScrollAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getScaledDismissSize()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 17

    move-object/from16 v16, p1

    check-cast v16, Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v9}, Lcom/android/systemui/recents/views/TaskStackView;->findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v15

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_1

    invoke-virtual {v10, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-boolean v1, v9, Landroid/util/MutableBoolean;->value:Z

    if-eqz v1, :cond_5

    invoke-virtual {v15, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    :cond_3
    return-void

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    if-eqz v13, :cond_2

    invoke-virtual {v10, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F

    move-result v8

    sub-float v14, v8, v12

    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    add-float/2addr v1, v14

    invoke-virtual {v15, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    goto :goto_1
.end method

.method public onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginDrag(Landroid/view/View;)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v6, 0xc8

    invoke-direct {v1, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    :goto_0
    invoke-direct {v3, v4, v0, v1, v7}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->resetLayoutStateAfterDismiss(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "overview_task_dismissed_source"

    invoke-static {v1, v2, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useCustomCurveLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/4 v1, -0x1

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v4, v5

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    float-to-int v1, v3

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    return v4

    :pswitch_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v5, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    :goto_0
    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v4, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->isSwipingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method recycleVelocityTracker()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public resetLayoutStateAfterDismiss(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/Interpolators;->REMOVING_LIST_VIEW:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    goto :goto_0
.end method
