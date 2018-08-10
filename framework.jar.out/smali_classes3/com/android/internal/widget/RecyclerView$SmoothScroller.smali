.class public abstract Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    new-instance v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    return-void
.end method

.method private onAnimation(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v2, v1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    if-nez v1, :cond_1

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_2
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->-set0(Lcom/android/internal/widget/RecyclerView$State;I)I

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStart()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method protected final stop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStop()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-static {v0, v2}, Lcom/android/internal/widget/RecyclerView$State;->-set0(Lcom/android/internal/widget/RecyclerView$State;I)I

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->-wrap0(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    return-void
.end method
