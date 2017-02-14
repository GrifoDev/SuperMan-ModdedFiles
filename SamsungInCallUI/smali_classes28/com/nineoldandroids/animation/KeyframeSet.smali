.class Lcom/nineoldandroids/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mKeyframes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    iget-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static varargs ofFloat([F)Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    if-ne v2, v6, :cond_1

    invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(F)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v6

    :cond_0
    new-instance v3, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    return-object v3

    :cond_1
    aget v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofInt([I)Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    if-ne v2, v6, :cond_1

    invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(F)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v6

    :cond_0
    new-instance v3, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    return-object v3

    :cond_1
    aget v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 8

    array-length v6, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    new-array v0, v6, [Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v6, :cond_3

    new-instance v7, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v7, v0}, Lcom/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    :goto_2
    return-object v7

    :cond_0
    aget-object v7, p0, v4

    instance-of v7, v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget-object v7, p0, v4

    instance-of v7, v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    aget-object v7, p0, v4

    check-cast v7, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    new-array v5, v6, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    const/4 v4, 0x0

    :goto_4
    if-lt v4, v6, :cond_5

    new-instance v7, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v7, v5}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    goto :goto_2

    :cond_5
    aget-object v7, p0, v4

    check-cast v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v7, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v7, p0}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    goto :goto_2
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    if-ne v2, v6, :cond_1

    invoke-static {v5}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(F)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aget-object v4, p0, v4

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v6

    :cond_0
    new-instance v3, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    return-object v3

    :cond_1
    aget-object v3, p0, v4

    invoke-static {v5, v3}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    int-to-float v3, v0

    add-int/lit8 v4, v2, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v0

    invoke-static {v3, v4}, Lcom/nineoldandroids/animation/Keyframe;->ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 6

    iget-object v1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/nineoldandroids/animation/Keyframe;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    new-instance v3, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v3, v2}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    return-object v3

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/KeyframeSet;->clone()Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 9

    iget v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v8}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_3

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_2
    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v6, p1, v4

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/Keyframe;

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v6, p1, v4

    iget-object v7, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v8}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mFirstKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    const/4 v0, 0x1

    :goto_1
    iget v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    if-lt v0, v6, :cond_6

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mLastKeyframe:Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v6}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_8

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_7
    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v6, p1, v4

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v7, v4

    div-float v2, v6, v7

    iget-object v6, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v2, v7, v8}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    move-object v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .locals 0

    iput-object p1, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v1, " "

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
