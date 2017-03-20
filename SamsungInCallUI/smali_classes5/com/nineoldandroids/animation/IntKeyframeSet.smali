.class Lcom/nineoldandroids/animation/IntKeyframeSet;
.super Lcom/nineoldandroids/animation/KeyframeSet;
.source "IntKeyframeSet.java"


# instance fields
.field private deltaValue:I

.field private firstTime:Z

.field private firstValue:I

.field private lastValue:I


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V
    .locals 1
    .param p1, "keyframes"    # [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Lcom/nineoldandroids/animation/IntKeyframeSet;
    .locals 6

    .prologue
    .line 52
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 53
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/Keyframe;>;"
    iget-object v5, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 54
    .local v4, "numKeyframes":I
    new-array v2, v4, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 55
    .local v2, "newKeyframes":[Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 58
    new-instance v3, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v3, v2}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    .line 59
    .local v3, "newSet":Lcom/nineoldandroids/animation/IntKeyframeSet;
    return-object v3

    .line 56
    .end local v3    # "newSet":Lcom/nineoldandroids/animation/IntKeyframeSet;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v5}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v5

    check-cast v5, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v5, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/KeyframeSet;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/IntKeyframeSet;->clone()Lcom/nineoldandroids/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .locals 13
    .param p1, "fraction"    # F

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 63
    iget v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 64
    iget-boolean v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    if-eqz v9, :cond_0

    .line 65
    iput-boolean v11, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    .line 66
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v9

    iput v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    .line 67
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v9

    iput v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    .line 68
    iget v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->deltaValue:I

    .line 70
    :cond_0
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v9, :cond_1

    .line 71
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v9, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 73
    :cond_1
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v9, :cond_2

    .line 74
    iget v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->deltaValue:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 131
    :goto_0
    return v9

    .line 76
    :cond_2
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, p1, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_0

    .line 79
    :cond_3
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_6

    .line 80
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 81
    .local v7, "prevKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 82
    .local v4, "nextKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 83
    .local v8, "prevValue":I
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 84
    .local v5, "nextValue":I
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    .line 85
    .local v6, "prevFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    .line 86
    .local v3, "nextFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 87
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    .line 88
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 90
    :cond_4
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 91
    .local v2, "intervalFraction":F
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v9, :cond_5

    .line 92
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    goto :goto_0

    .line 93
    :cond_5
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 94
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_0

    .line 95
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_9

    .line 96
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 97
    .restart local v7    # "prevKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 98
    .restart local v4    # "nextKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 99
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 100
    .restart local v5    # "nextValue":I
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    .line 101
    .restart local v6    # "prevFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    .line 102
    .restart local v3    # "nextFraction":F
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 103
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_7

    .line 104
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 106
    :cond_7
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 107
    .restart local v2    # "intervalFraction":F
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v9, :cond_8

    .line 108
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    goto/16 :goto_0

    .line 109
    :cond_8
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto/16 :goto_0

    .line 111
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_9
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 112
    .restart local v7    # "prevKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    if-lt v0, v9, :cond_a

    .line 131
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v10, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v9}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto/16 :goto_0

    .line 113
    :cond_a
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 114
    .restart local v4    # "nextKeyframe":Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_d

    .line 115
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 116
    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_b

    .line 117
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 119
    :cond_b
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    sub-float v9, p1, v9

    .line 120
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v10

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v11

    sub-float/2addr v10, v11

    .line 119
    div-float v2, v9, v10

    .line 121
    .restart local v2    # "intervalFraction":F
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 122
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 123
    .restart local v5    # "nextValue":I
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v9, :cond_c

    .line 124
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    goto/16 :goto_0

    .line 125
    :cond_c
    iget-object v9, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 126
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto/16 :goto_0

    .line 128
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "intervalFraction":F
    .end local v5    # "nextValue":I
    .end local v8    # "prevValue":I
    :cond_d
    move-object v7, v4

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
