.class public Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;
.super Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;
.source "SprDrawableAnimationValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    }
.end annotation


# instance fields
.field private final mAnimatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 191
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 192
    iput-boolean v10, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 198
    .local v2, "now":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 199
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 201
    .local v0, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    iget-boolean v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    if-eqz v5, :cond_5

    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, "preDraw":Z
    iget-wide v6, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget-wide v8, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    add-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    .line 205
    invoke-virtual {p0, v0, v11}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v4

    .line 207
    .local v4, "preDraw":Z
    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    iput-wide v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 217
    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-lez v5, :cond_1

    .line 218
    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    .line 224
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 225
    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v5, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    .line 198
    .end local v4    # "preDraw":Z
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .restart local v4    # "preDraw":Z
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v1, v1, -0x1

    .line 215
    goto :goto_2

    .line 221
    .local v4, "preDraw":Z
    :cond_4
    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v4

    .local v4, "preDraw":Z
    goto :goto_1

    .line 228
    .end local v4    # "preDraw":Z
    :cond_5
    iget-wide v6, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    .line 229
    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 230
    iput-wide v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 231
    iput-boolean v11, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    goto :goto_2

    .line 236
    .end local v0    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 237
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mInterval:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-virtual {v5, p0, v6, v7}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 240
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 190
    return-void
.end method

.method public start()V
    .locals 14

    .prologue
    .line 42
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->start()V

    .line 44
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 48
    .local v8, "now":J
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v12}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "object$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 49
    .local v7, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v0, 0x0

    .line 50
    .local v0, "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    const/4 v6, 0x0

    .line 51
    .local v6, "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    const/4 v5, 0x0

    .line 52
    .local v5, "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    const/4 v11, 0x0

    .line 54
    .local v11, "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    iget-object v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .end local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    .end local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    .end local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    .local v3, "attr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 55
    .local v2, "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    iget-byte v12, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v5, v2

    .line 63
    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .local v5, "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    goto :goto_1

    .end local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :sswitch_1
    move-object v0, v2

    .line 57
    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .local v0, "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    goto :goto_1

    .end local v0    # "animator":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    :sswitch_2
    move-object v6, v2

    .line 60
    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    .local v6, "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    goto :goto_1

    .end local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    :sswitch_3
    move-object v11, v2

    .line 66
    check-cast v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .local v11, "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    goto :goto_1

    .line 70
    .end local v2    # "attr":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .end local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_1
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;-><init>(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;)V

    .line 72
    .local v1, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    .line 73
    iget-object v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 75
    if-nez v5, :cond_2

    .line 76
    iget-boolean v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    if-eqz v12, :cond_5

    .line 77
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    .line 82
    .restart local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :goto_2
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 84
    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v5

    .end local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .restart local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    invoke-virtual {v7, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 90
    .end local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :cond_2
    if-nez v11, :cond_3

    .line 91
    iget-boolean v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    if-eqz v12, :cond_6

    .line 92
    new-instance v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    .line 97
    .restart local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :goto_3
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 99
    :try_start_1
    invoke-virtual {v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v11

    .end local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    check-cast v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .restart local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    invoke-virtual {v7, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 105
    .end local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :cond_3
    if-nez v6, :cond_4

    .line 107
    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>()V

    .line 108
    .restart local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 110
    :try_start_2
    invoke-virtual {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 114
    invoke-virtual {v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    .line 117
    .end local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    :cond_4
    iput-object v6, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    .line 118
    iput-object v5, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    .line 119
    iput-object v11, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    .line 120
    iput-object v7, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 121
    iput-wide v8, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    .line 122
    iget v12, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    int-to-long v12, v12

    iput-wide v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    .line 123
    iget v12, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    iput v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    .line 125
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_5
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    .restart local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    goto :goto_2

    .line 85
    .end local v5    # "fill":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 94
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_6
    new-instance v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(BI)V

    .restart local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    goto :goto_3

    .line 100
    .end local v11    # "stroke":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :catch_1
    move-exception v4

    .line 101
    .restart local v4    # "e":Ljava/lang/CloneNotSupportedException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 111
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    :catch_2
    move-exception v4

    .line 112
    .restart local v4    # "e":Ljava/lang/CloneNotSupportedException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 129
    .end local v1    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    .end local v3    # "attr$iterator":Ljava/util/Iterator;
    .end local v4    # "e":Ljava/lang/CloneNotSupportedException;
    .end local v6    # "matrix":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    .end local v7    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_7
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, p0, v8, v9}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 41
    return-void

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_3
        0x40 -> :sswitch_2
        0x61 -> :sswitch_1
    .end sparse-switch
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animatorData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 137
    .local v0, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 139
    .end local v0    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->update()V

    .line 146
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animatorData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    .line 147
    .local v0, "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    goto :goto_0

    .line 143
    .end local v0    # "animatorData":Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    :cond_0
    return-void
.end method

.method public updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z
    .locals 8
    .param p1, "animatorData"    # Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
    .param p2, "isLastFrame"    # Z

    .prologue
    const/4 v5, 0x0

    .line 152
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean p2, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    .line 153
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean v5, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean v5, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean v5, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean v5, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    iput-boolean v5, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    .line 154
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, "preDraw":Z
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 158
    .local v0, "animator":Landroid/animation/Animator;
    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .end local v0    # "animator":Landroid/animation/Animator;
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->update(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/4 v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->reset()V

    .line 164
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    .line 166
    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    iget-object v6, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    .line 167
    iget-object v7, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v7, v7, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    .line 165
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 169
    :cond_2
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    if-eqz v3, :cond_3

    .line 170
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotateDegree:F

    .line 171
    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotX:F

    iget-object v6, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotY:F

    .line 170
    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 173
    :cond_3
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    .line 175
    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    .line 174
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    :cond_4
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    if-eqz v3, :cond_5

    .line 179
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 181
    :cond_5
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    if-eqz v3, :cond_6

    .line 182
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->strokeColor:I

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 184
    :cond_6
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    .line 186
    return v2
.end method
