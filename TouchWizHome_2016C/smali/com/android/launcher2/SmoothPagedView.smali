.class public abstract Lcom/android/launcher2/SmoothPagedView;
.super Lcom/android/launcher2/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;,
        Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x0

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field static final X_LARGE_MODE:I = 0x1


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mHandler:Landroid/os/Handler;

.field private mScrollDelay:I

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollMode:I

.field private mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    new-instance v2, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;-><init>(Lcom/android/launcher2/SmoothPagedView;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollMode()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-nez v2, :cond_0

    const v2, 0x451c4000    # 2500.0f

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    new-instance v2, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/SmoothPagedView;->mUsePagingTouchSlop:Z

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-eq v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/SmoothPagedView;->mDeferScrollUpdate:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEdgeScroll(II)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getComingPage()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v8

    if-lt v0, v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneLeftWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneRightWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getWidth()I

    move-result v4

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v8, :cond_2

    move v1, v6

    :goto_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    instance-of v8, p0, Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_4

    if-ne v0, v7, :cond_4

    move v2, v7

    :goto_2
    if-ge p1, v3, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(II)Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, p0, Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_3

    if-ne v0, v7, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    sub-int v7, v4, v5

    if-le p1, v7, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToRight(II)Z

    move-result v6

    goto :goto_0

    :cond_7
    iput v6, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v7, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v7}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0
.end method

.method private snapToPageWithVelocity(IIZ)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAdjustedPageIndex(I)I

    move-result p1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getCurrentPage()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v2

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    sub-int v0, v2, v4

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v1, v4, 0x64

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->setDistance(I)V

    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, p2

    iget v7, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->disableSettle()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x64

    goto :goto_1
.end method


# virtual methods
.method protected cancelScrollRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    return-void
.end method

.method public computeScroll()V
    .locals 6

    const/4 v5, 0x1

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v4, v5, :cond_1

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->computeScroll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScrollHelper()Z

    move-result v3

    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchState:I

    if-ne v4, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v2, v4, v5

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchX:F

    iget v5, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v5

    return v5

    :pswitch_0
    iput v6, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/SmoothPagedView;->checkEdgeScroll(II)Z

    move-result v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragState;

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :pswitch_2
    iput v6, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v5}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getScrollMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEnterScrollArea(III)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onExitScrollArea()V
    .locals 0

    return-void
.end method

.method protected onScrollComplete()V
    .locals 0

    return-void
.end method

.method protected scrollToLeft(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected scrollToRight(II)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method
