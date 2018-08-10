.class public Lcom/samsung/android/settings/widget/GoToTopButton;
.super Landroid/widget/ImageView;
.source "GoToTopButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/GoToTopButton$1;,
        Lcom/samsung/android/settings/widget/GoToTopButton$2;,
        Lcom/samsung/android/settings/widget/GoToTopButton$3;
    }
.end annotation


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mEnabled:Z

.field private mFadeInAnim:Landroid/animation/ValueAnimator;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mGoToTopState:I

.field private mHandler:Landroid/os/Handler;

.field private mLastAnimatedAlpha:F

.field private mLastAnimatedTime:J

.field private mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/widget/GoToTopButton;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedAlpha:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/widget/GoToTopButton;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mGoToTopState:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/widget/GoToTopButton;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedAlpha:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/widget/GoToTopButton;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/widget/GoToTopButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/GoToTopButton;->startFadeOutAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mEnabled:Z

    iput v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mGoToTopState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedAlpha:F

    const-wide/16 v0, 0x14d

    iput-wide v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedTime:J

    new-instance v0, Lcom/samsung/android/settings/widget/GoToTopButton$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/GoToTopButton$1;-><init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/widget/GoToTopButton$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/GoToTopButton$2;-><init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/samsung/android/settings/widget/GoToTopButton$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/GoToTopButton$3;-><init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private startFadeInAnimation()V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v5, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mGoToTopState:I

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedAlpha:F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/GoToTopButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startFadeOutAnimation()V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedAlpha:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public init(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    const-wide/16 v4, 0x14d

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/widget/GoToTopButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/widget/GoToTopButton$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/GoToTopButton$4;-><init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/widget/GoToTopButton$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/GoToTopButton$5;-><init>(Lcom/samsung/android/settings/widget/GoToTopButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method public updateStateByAction(I)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    iget v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mGoToTopState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/GoToTopButton;->startFadeInAnimation()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/GoToTopButton;->startFadeOutAnimation()V

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mLastAnimatedTime:J

    const-wide/16 v4, 0x14d

    sub-long v0, v4, v2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/GoToTopButton;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/GoToTopButton;->startFadeInAnimation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
