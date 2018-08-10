.class public Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarGestureHelper.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockWindowEnabled:Z

.field private mDockWindowTouchSlopExceeded:Z

.field private mDownOnRecents:Z

.field private mDragMode:I

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mMinFlingVelocity:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field private final mScrollTouchSlop:I

.field private final mTaskSwitcherDetector:Landroid/view/GestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070415

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mMinFlingVelocity:I

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "overview_nav_bar_gesture"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private calculateDragMode()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleDockWindowEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleDragActionDownEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    goto :goto_0
.end method

.method private handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    sub-int v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-nez v11, :cond_1

    :cond_0
    const/4 v11, 0x0

    return v11

    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    if-nez v11, :cond_a

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v11, :cond_5

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v10, v11, :cond_4

    if-le v10, v8, :cond_4

    const/4 v6, 0x1

    :goto_0
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    if-eqz v11, :cond_b

    if-eqz v6, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->calculateDragMode()I

    move-result v2

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v13

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v11, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v12}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x2

    :goto_2
    invoke-virtual {v13, v11, v12, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    :cond_2
    :goto_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    const/16 v12, 0x110

    invoke-interface {v11, v2, v0, v3, v12}, Lcom/android/systemui/RecentsComponent;->dockTopTask(IILandroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_b

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    const/4 v11, 0x1

    return v11

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v8, v11, :cond_6

    if-le v8, v10, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    goto :goto_1

    :cond_8
    const/4 v12, 0x1

    goto :goto_2

    :cond_9
    if-nez v2, :cond_2

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v11, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    :goto_4
    float-to-int v4, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v4, v12, v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v11, v4, v12, v5}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_b
    :goto_5
    const/4 v11, 0x0

    return v11

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    goto :goto_4

    :cond_d
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecents(F)V

    goto :goto_5
.end method

.method private handleDragActionUpEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    :goto_1
    invoke-virtual {v2, v0, v1, v5, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecentsEnded(F)V

    goto :goto_2
.end method

.method private interceptDockWindowEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsRTL:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v4, :cond_4

    cmpg-float v4, p4, v5

    if-gez v4, :cond_3

    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v4}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    :cond_0
    :goto_4
    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    cmpl-float v4, v0, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    cmpg-float v4, p3, v5

    if-gez v4, :cond_3

    goto :goto_2

    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v4, :cond_7

    cmpg-float v4, p4, v5

    if-gez v4, :cond_6

    :goto_5
    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    cmpl-float v4, p3, v5

    if-lez v4, :cond_6

    goto :goto_5

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v4}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->interceptDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v3, v6, :cond_1

    if-le v3, v5, :cond_1

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v5, v6, :cond_3

    if-le v5, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTaskSwitcherDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "overview_nav_bar_gesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    :cond_1
    return-void
.end method

.method public setBarState(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsRTL:Z

    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method
