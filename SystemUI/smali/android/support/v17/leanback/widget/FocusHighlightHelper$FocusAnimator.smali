.class Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FocusAnimator"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/TimeAnimator;

.field private final mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

.field private final mDuration:I

.field private mFocusLevel:F

.field private mFocusLevelDelta:F

.field private mFocusLevelStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScaleDiff:F

.field private final mView:Landroid/view/View;

.field private final mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;


# direct methods
.method constructor <init>(Landroid/view/View;FZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    iput p4, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p2, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    instance-of v0, p1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    :goto_1
    return-void

    :cond_0
    iput-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    goto :goto_1
.end method


# virtual methods
.method animateFocus(ZZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->endAnimation()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-float v0, v1

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    iput v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    goto :goto_1
.end method

.method endAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 6

    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    iget v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    return-void

    :cond_1
    long-to-double v2, p2

    iget v1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v0, v2

    goto :goto_0
.end method

.method setFocusLevel(F)V
    .locals 4

    iput p1, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    iget v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v1, v3, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setShadowFocusLevel(F)V

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v2}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->setOverlayColor(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v2, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    goto :goto_1
.end method
