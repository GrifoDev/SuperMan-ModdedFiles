.class public Lcom/airbnb/lottie/utils/LottieValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "LottieValueAnimator.java"


# instance fields
.field private isReversed:Z

.field private maxProgress:F

.field private minProgress:F

.field private originalDuration:J

.field private progress:F

.field private systemAnimationsAreDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-boolean v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    iput-boolean v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iput v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    iput v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFloatValues([F)V

    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator$1;-><init>(Lcom/airbnb/lottie/utils/LottieValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator$2;-><init>(Lcom/airbnb/lottie/utils/LottieValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/utils/LottieValueAnimator;)F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    return v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/utils/LottieValueAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/lottie/utils/LottieValueAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    return p1
.end method

.method private setProgressInternal(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    :cond_0
    :goto_0
    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_1

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    iget v3, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setCurrentPlayTime(J)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public forceUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgressInternal(F)V

    return-void
.end method

.method public getMaxProgress()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    return v0
.end method

.method public resumeAnimation()V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->start()V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3

    iput-wide p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->originalDuration:J

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    return-object p0
.end method

.method public setIsReversed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iget v1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->minProgress:F

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgressInternal(F)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->end()V

    goto :goto_0
.end method

.method public systemAnimationsAreDisabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled:Z

    return-void
.end method

.method public updateValues(FF)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget-boolean v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    aput v2, v3, v4

    iget-boolean v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isReversed:Z

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    aput v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setFloatValues([F)V

    iget-wide v2, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->originalDuration:J

    long-to-float v2, v2

    sub-float v3, v0, v1

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method
