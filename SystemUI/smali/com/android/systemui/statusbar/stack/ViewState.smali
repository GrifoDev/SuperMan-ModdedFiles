.class public Lcom/android/systemui/statusbar/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/ViewState$1;,
        Lcom/android/systemui/statusbar/stack/ViewState$2;,
        Lcom/android/systemui/statusbar/stack/ViewState$3;
    }
.end annotation


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 6

    move-wide v0, p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide v0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x7f0a054f

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a054d

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x7f0a0552

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    return v1

    :cond_1
    const v1, 0x7f0a0550

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1

    const v0, 0x7f0a054f

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a003e

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a003f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

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

    const v15, 0x7f0a003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a003f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22

    const v18, 0x7f0a054b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    const v18, 0x7f0a054a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    return-void

    :cond_0
    const v18, 0x7f0a054c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v18, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v18, 0x7f0a054c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054b

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054a

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 22

    const v18, 0x7f0a054e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    const v18, 0x7f0a054d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    cmpl-float v18, v18, v9

    if-nez v18, :cond_0

    return-void

    :cond_0
    const v18, 0x7f0a054f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_2

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v9, v18

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v18

    add-float v12, v18, v16

    const/16 v18, 0x0

    aget-object v18, v17, v18

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v12, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054e

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054d

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v20

    const/16 v21, 0x0

    aput v20, v19, v21

    const/16 v20, 0x1

    aput v9, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v18, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v18, 0x7f0a054f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054e

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const v19, 0x7f0a054d

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_6
    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18

    const v14, 0x7f0a0551

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    const v14, 0x7f0a0550

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    return-void

    :cond_0
    const v14, 0x7f0a0552

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v3

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

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

    const v15, 0x7f0a0551

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0550

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v14, v15, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    const v14, 0x7f0a0552

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0551

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f0a0550

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    if-nez v3, :cond_1

    cmpl-float v4, v0, v5

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    and-int/2addr v1, v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-static {p1, v4, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_6
    if-eqz v1, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :goto_7
    return-void

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const v4, 0x7f0a054c

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    const v4, 0x7f0a054f

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_3

    :cond_7
    const v4, 0x7f0a0552

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_5

    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;->getAnimatorTag()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_6

    :cond_a
    const v4, 0x7f0a003f

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    return-void

    :cond_0
    const v17, 0x7f0a054c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    :cond_1
    :goto_0
    const v17, 0x7f0a054f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    :cond_2
    :goto_1
    const v17, 0x7f0a0552

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    :cond_3
    :goto_2
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    :cond_4
    :goto_3
    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v17, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;F)V

    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v16, :cond_10

    :cond_6
    const/4 v11, 0x1

    :goto_5
    const v17, 0x7f0a003f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    :cond_7
    :goto_6
    if-eqz v11, :cond_16

    const/4 v15, 0x4

    :goto_7
    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableView;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v17, p1

    check-cast v17, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_9

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_13

    const/4 v10, 0x1

    :goto_8
    if-nez v11, :cond_14

    xor-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v14

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v12

    if-eqz v14, :cond_15

    const/4 v13, 0x2

    :goto_a
    if-eq v12, v13, :cond_12

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_13
    const/4 v10, 0x0

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    goto :goto_9

    :cond_15
    const/4 v13, 0x0

    goto :goto_a

    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_7
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f0a054c

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const v1, 0x7f0a054f

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const v1, 0x7f0a0552

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const v1, 0x7f0a003f

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 1

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0a054c

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f0a054f

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const v0, 0x7f0a0552

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const v0, 0x7f0a003f

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
