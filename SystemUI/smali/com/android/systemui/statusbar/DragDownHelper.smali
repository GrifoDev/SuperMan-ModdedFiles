.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    const-class v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    return-void
.end method

.method private cancelExpansion()V
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->isNotificationPreview(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v1

    :goto_0
    const-string/jumbo v2, "actualHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v4

    aput v4, v3, v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    goto :goto_0
.end method

.method private captureStartingChild(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V
    .locals 7

    const/4 v5, 0x0

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isContentExpandable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v4, 0x3f000000    # 0.5f

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->isNotificationPreview(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v4, 0x3dcccccd    # 0.1f

    :cond_1
    mul-float v3, p1, v4

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v5, v6

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v5

    sub-float/2addr v3, v2

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->isNotificationPreview(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    return-void

    :cond_3
    const v4, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v0

    goto :goto_1
.end method

.method private isFalseTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNotificationPreview(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandedNotificationPreview()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private stopDragging()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDraggingDown()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    goto :goto_0
.end method


# virtual methods
.method public isDraggingDown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    iput-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    goto :goto_0

    :pswitch_2
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v0, v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isPanelExpandEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDraggingDown()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    const-string/jumbo v3, "KEEPLOCK"

    const-string/jumbo v4, "KEEPLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v3, :cond_2

    return v5

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    return v6

    :cond_3
    const-string/jumbo v3, "KEEPLOCK"

    const-string/jumbo v4, "KEEPLOCK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(I)V

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    if-nez v2, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    :cond_1
    :goto_2
    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->isFalseTouch()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v4, v1, v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v2, v3, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v5

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
