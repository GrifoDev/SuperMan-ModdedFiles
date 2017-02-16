.class public Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;
.super Ljava/lang/Object;
.source "ViewFocusAnimator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final mAnimDuration:I

.field private final mDismissIconAlpha:F

.field mFocusAnimation:Landroid/animation/ObjectAnimator;

.field private final mFocusInterpolator:Landroid/view/animation/Interpolator;

.field private mFocusProgress:F

.field private final mSelectedScale:F

.field private final mSelectedScaleDelta:F

.field private final mSelectedSpacingDelta:F

.field private final mSelectedZDelta:F

.field protected mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

.field private final mUnselectedScale:F

.field private final mUnselectedSpacing:F

.field private final mUnselectedZ:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_0

    const v3, 0x7f0c0077

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    const v3, 0x7f0c0078

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    :goto_0
    const v3, 0x7f0d040a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    const v3, 0x7f0d040b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_1

    const v3, 0x7f0d0339

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    const v3, 0x7f0d033a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    :goto_1
    const v3, 0x7f0c006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    const-string/jumbo v3, "focusProgress"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-nez v3, :cond_2

    const v3, 0x7f0c0079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    iget-object v2, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;-><init>(Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    const v3, 0x7f0c007e

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    const v3, 0x7f0c007f

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    goto/16 :goto_0

    :cond_1
    const v3, 0x7f0d0408

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    const v3, 0x7f0d0409

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    goto/16 :goto_1

    :cond_2
    const v3, 0x7f0c0080

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_3
.end method

.method private animateFocus(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v1, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private setFocusProgress(F)V
    .locals 8

    iput p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusProgress:F

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedScale:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedScaleDelta:F

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedZ:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedZDelta:F

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    iget v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mUnselectedSpacing:F

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mSelectedSpacingDelta:F

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    float-to-int v4, v1

    iget-object v5, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingTop()I

    move-result v5

    float-to-int v6, v1

    iget-object v7, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mDismissIconAlpha:F

    mul-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getThumbnailView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getDismissIconView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setZ(F)V

    return-void
.end method


# virtual methods
.method public changeSize(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v2, :cond_0

    if-gez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/recents/tv/views/TaskCardView;->measure(II)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->animateFocus(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->setFocusProgress(F)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    sget-boolean v3, Lcom/android/systemui/recents/tv/views/TaskCardView;->isTvmode:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    return-void
.end method
