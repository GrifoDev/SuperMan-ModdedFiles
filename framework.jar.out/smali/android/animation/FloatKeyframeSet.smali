.class Landroid/animation/FloatKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "FloatKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/FloatKeyframeSet;
    .locals 6

    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget-object v5, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Landroid/animation/Keyframe$FloatKeyframe;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_2

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v5

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v3

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_1

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    :goto_0
    return v9

    :cond_1
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_0

    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_5

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v5

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v6

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v3

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_3
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_4

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    :goto_1
    return v9

    :cond_4
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_1

    :cond_5
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    const/4 v0, 0x1

    :goto_2
    iget v9, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    if-ge v0, v9, :cond_9

    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_8

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v9

    sub-float v9, p1, v9

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v10

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v11

    sub-float/2addr v10, v11

    div-float v2, v9, v10

    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v8

    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v5

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    :cond_6
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_7

    sub-float v9, v5, v8

    mul-float/2addr v9, v2

    add-float/2addr v9, v8

    :goto_3
    return v9

    :cond_7
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    goto :goto_3

    :cond_8
    move-object v7, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    return v9
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
