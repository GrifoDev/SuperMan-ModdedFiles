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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    iput-boolean v10, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mIsRunning:Z

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    iget-boolean v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    if-eqz v5, :cond_5

    const/4 v4, 0x0

    iget-wide v6, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget-wide v8, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    add-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    invoke-virtual {p0, v0, v11}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-wide v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-lez v5, :cond_1

    iget v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v5, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v4

    goto :goto_1

    :cond_5
    iget-wide v6, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    cmp-long v5, v2, v6

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-wide v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iput-boolean v11, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mInterval:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-virtual {v5, p0, v6, v7}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 14

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->start()V

    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v12}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v12, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move-object v5, v2

    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    goto :goto_1

    :sswitch_1
    move-object v0, v2

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    goto :goto_1

    :sswitch_2
    move-object v6, v2

    check-cast v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    goto :goto_1

    :sswitch_3
    move-object v11, v2

    check-cast v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;-><init>(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;)V

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez v5, :cond_2

    iget-boolean v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasFillAnimation:Z

    if-eqz v12, :cond_5

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    :goto_2
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :cond_2
    if-nez v11, :cond_3

    iget-boolean v12, v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    if-eqz v12, :cond_6

    new-instance v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    :goto_3
    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :try_start_1
    invoke-virtual {v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v7, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :cond_3
    if-nez v6, :cond_4

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;-><init>()V

    invoke-virtual {v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :try_start_2
    invoke-virtual {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    :cond_4
    iput-object v6, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iput-object v5, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iput-object v11, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iput-object v7, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iput-wide v8, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget v12, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    int-to-long v12, v12

    iput-wide v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    iget v12, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    iput v12, v1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :cond_6
    new-instance v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>(BI)V

    goto :goto_3

    :catch_1
    move-exception v4

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :catch_2
    move-exception v4

    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :cond_7
    iget-object v12, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, p0, v8, v9}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

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

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public update()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->update()V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAnimatorData(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;Z)Z
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean p2, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

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

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->update(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->reset()V

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    iget-object v6, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    iget-object v7, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v7, v7, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotateDegree:F

    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotX:F

    iget-object v6, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v6, v6, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotY:F

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

    iget-object v3, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    iget-object v5, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    :cond_5
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v3, v3, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->strokeColor:I

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    :cond_6
    iget-object v3, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v4, p1, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->alpha:F

    return v2
.end method
