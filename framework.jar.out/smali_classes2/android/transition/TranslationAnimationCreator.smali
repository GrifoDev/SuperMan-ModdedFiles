.class Landroid/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Landroid/transition/TransitionValues;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p9, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 55
    .local v7, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 56
    .local v8, "terminalY":F
    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v4, 0x1020055

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 57
    .local v12, "startPosition":[I
    if-eqz v12, :cond_0

    .line 58
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int/2addr v3, p2

    int-to-float v3, v3

    add-float p4, v3, v7

    .line 59
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float p5, v3, v8

    .line 62
    :cond_0
    sub-float v3, p4, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v5, p2, v3

    .line 63
    .local v5, "startPosX":I
    sub-float v3, p5, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v6, p3, v3

    .line 65
    .local v6, "startPosY":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 67
    cmpl-float v3, p4, p6

    if-nez v3, :cond_1

    cmpl-float v3, p5, p7

    if-nez v3, :cond_1

    .line 68
    const/4 v3, 0x0

    return-object v3

    .line 70
    :cond_1
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 71
    .local v11, "path":Landroid/graphics/Path;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p0, v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 76
    .local v10, "anim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$TransitionPositionListener;)V

    .line 78
    .local v2, "listener":Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 79
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    invoke-virtual {v10, v2}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 81
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    return-object v10
.end method
