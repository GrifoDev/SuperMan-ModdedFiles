.class public Lcom/android/systemui/statusbar/notification/PropertyAnimator;
.super Ljava/lang/Object;
.source "PropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_notification_PropertyAnimator_3329(Landroid/util/Property;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;",
            "F",
            "Lcom/android/systemui/statusbar/stack/AnimationProperties;",
            ")V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v19

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimationStartTag()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimationEndTag()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v22, v22, p2

    if-nez v22, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/animation/ValueAnimator;

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    move-result v22

    if-nez v22, :cond_2

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v22

    sub-float v20, p2, v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v22

    add-float v13, v22, v20

    const/16 v22, 0x0

    aget-object v22, v21, v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v13, v23, v24

    const/16 v24, 0x1

    aput p2, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v23

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x1

    aput p2, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v22, Lcom/android/systemui/statusbar/notification/-$Lambda$Xp1PHBHoWYKndsRTKn9fptBudmU;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/-$Lambda$Xp1PHBHoWYKndsRTKn9fptBudmU;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object v11, v9

    :goto_0
    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_4

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_4

    :cond_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v6, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v22, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v5, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;-><init>(Landroid/view/View;III)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v6, v12}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method
