.class public abstract Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    return-void
.end method

.method private getCurrentKeyframe()Lcom/airbnb/lottie/animation/Keyframe;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TK;>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/Keyframe;

    iget v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;

    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "There are no keyframes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;

    iget v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/animation/Keyframe;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/Keyframe;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/animation/Keyframe;->containsProgress(F)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    iput-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->cachedKeyframe:Lcom/airbnb/lottie/animation/Keyframe;

    return-object v1

    :cond_5
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    goto :goto_0
.end method

.method private getCurrentKeyframeProgress()F
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->isStatic()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v4

    sub-float v2, v3, v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->getEndProgress()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v4

    sub-float v1, v3, v4

    iget-object v3, v0, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    div-float v4, v2, v1

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    return v3

    :cond_0
    return v4

    :cond_1
    return v4
.end method

.method private getEndProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->getEndProgress()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getStartDelayProgress()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->keyframes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/Keyframe;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/Keyframe;->getStartProgress()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v0

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframeProgress()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public setIsDiscrete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->isDiscrete:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getStartDelayProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getEndProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
