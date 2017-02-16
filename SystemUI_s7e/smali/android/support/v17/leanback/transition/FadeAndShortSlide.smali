.class public Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.super Landroid/transition/Visibility;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;,
        Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
    }
.end annotation


# static fields
.field static final sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field static final sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mDistance:F

.field private mFade:Landroid/transition/Visibility;

.field private mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

.field final sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$3;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$4;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$5;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x800003

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    new-instance v2, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;-><init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V

    iput-object v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    sget-object v2, Landroid/support/v17/leanback/R$styleable;->lbSlide:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbSlide_lb_slideEdge:I

    const v3, 0x800003

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setSlideEdge(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-super {p0, p1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public clone()Landroid/transition/Transition;
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    iget-object v1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v1}, Landroid/transition/Visibility;->clone()Landroid/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/transition/Visibility;

    iput-object v1, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    return-object v0
.end method

.method getHorizontalDistance(Landroid/view/ViewGroup;)F
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_0
.end method

.method getVerticalDistance(Landroid/view/ViewGroup;)F
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mDistance:F

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    if-nez p4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    const/4 v4, 0x0

    aget v6, v15, v4

    const/4 v4, 0x1

    aget v7, v15, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v9

    sget-object v12, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v13, p0

    invoke-static/range {v4 .. v13}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v14

    if-nez v17, :cond_2

    return-object v14

    :cond_2
    if-nez v14, :cond_3

    return-object v17

    :cond_3
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v16
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 18

    if-nez p3, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1

    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:fadeAndShortSlideTransition:screenPosition"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    const/4 v4, 0x0

    aget v6, v15, v4

    const/4 v4, 0x1

    aget v7, v15, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneX(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2, v15}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;->getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F

    move-result v11

    sget-object v12, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p0

    invoke-static/range {v4 .. v13}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v14

    if-nez v17, :cond_2

    return-object v14

    :cond_2
    if-nez v14, :cond_3

    return-object v17

    :cond_3
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {v16 .. v17}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v16
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-super {p0, p1}, Landroid/transition/Visibility;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mFade:Landroid/transition/Visibility;

    invoke-virtual {v0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    invoke-super {p0, p1}, Landroid/transition/Visibility;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    return-void
.end method

.method public setSlideEdge(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStart:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    :goto_0
    return-void

    :sswitch_1
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateStartEnd:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTop:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_0

    :sswitch_4
    sget-object v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->sCalculateTopBottom:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    iput-object v0, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->mSlideCalculator:Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_4
        0x70 -> :sswitch_5
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
        0x800007 -> :sswitch_2
    .end sparse-switch
.end method
