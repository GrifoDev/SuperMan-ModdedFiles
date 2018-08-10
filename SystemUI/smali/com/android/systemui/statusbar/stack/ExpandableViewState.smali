.class public Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "ExpandableViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x7f0a0204

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a0202

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a0203

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const v14, 0x7f0a0202

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a0204

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0203

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0202

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    return-void

    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a0204

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0203

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0202

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a0542

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const v14, 0x7f0a0541

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v5, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a0543

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0542

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0541

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    return-void

    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a0543

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0542

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0x7f0a0541

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a04bd

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0a04bc

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a04be

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a04bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a04bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    return-void

    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v15

    const/16 v16, 0x0

    aput v15, v14, v16

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a04be

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a04bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a04bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v3

    if-eq v2, v3, :cond_5

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-wide v2, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    return-void

    :cond_3
    const v2, 0x7f0a0204

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0a04be

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    const v2, 0x7f0a0543

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    iget v8, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    if-eq v0, v8, :cond_0

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    iget v9, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    cmpl-float v2, v11, v9

    if-eqz v2, :cond_1

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v10, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v2

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    :cond_0
    return-void
.end method
