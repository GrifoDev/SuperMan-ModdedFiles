.class public Lcom/android/incallui/util/SecAnimationUtils$Move;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/SecAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Move"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 17

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "checkAndMove: no move: at least one view is null"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v11

    mul-float/2addr v11, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v12

    mul-float/2addr v12, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v13

    mul-float/2addr v13, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v14

    mul-float/2addr v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v15, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v16, v11, v2

    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-nez v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "checkAndMove: no move: view\'s width or height is zero"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMove: startW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    if-nez p3, :cond_8

    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "checkAndMove: move immediately: duration is zero"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x1

    :cond_8
    invoke-static {v3, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v4, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v6, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v5, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "checkAndMove: move immediately: it is same location"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x1

    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v13, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "checkAndMove: move immediately: maybe start view == end view"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_b
    const/4 v2, 0x1

    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->setY(F)V

    div-float v2, v14, v13

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    div-float v2, v12, v11

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_d
    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v9, v3, v4

    const/4 v4, 0x1

    aput v10, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v3, "x"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v7, v4, v5

    const/4 v5, 0x1

    aput v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move/from16 v0, p3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v15, v5, v6

    const/4 v6, 0x1

    div-float v7, v14, v13

    mul-float/2addr v7, v15

    aput v7, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v5, "scaleY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v16, v6, v7

    const/4 v7, 0x1

    div-float v8, v12, v11

    mul-float v8, v8, v16

    aput v8, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static move(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0xfa

    invoke-static {p0, p1, p2, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 15

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Move: no move: at least one view is null"

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v8, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v6, v11

    const/4 v12, 0x0

    cmpl-float v12, v6, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, v7, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-nez v12, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Move: no move: view\'s width or height is zero "

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move: startW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/View;->setPivotX(F)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v10}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v11}, Landroid/view/View;->setScaleY(F)V

    const-string v12, "y"

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v4, v13, v14

    const/4 v4, 0x1

    aput v5, v13, v4

    invoke-static {p0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move/from16 v0, p3

    int-to-long v12, v0

    invoke-virtual {v4, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v5, "x"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v2, v12, v13

    const/4 v2, 0x1

    aput v3, v12, v2

    invoke-static {p0, v5, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 v0, p3

    int-to-long v12, v0

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v3, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v12, 0x0

    aput v10, v5, v12

    const/4 v12, 0x1

    div-float v8, v9, v8

    mul-float/2addr v8, v10

    aput v8, v5, v12

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move/from16 v0, p3

    int-to-long v8, v0

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v5, "scaleY"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v11, v8, v9

    const/4 v9, 0x1

    div-float v6, v7, v6

    mul-float/2addr v6, v11

    aput v6, v8, v9

    invoke-static {p0, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static moveDownToHide(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    new-instance v1, Lcom/android/incallui/util/SecAnimationUtils$Move$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/util/SecAnimationUtils$Move$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static movePosition(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "movePosition: no move: at least one view is null"

    invoke-static {v0}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    div-float v1, v5, v1

    div-float v0, v4, v0

    cmpl-float v6, v4, v7

    if-eqz v6, :cond_4

    cmpl-float v6, v5, v7

    if-nez v6, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePosition: no move - endW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static moveToDown(Landroid/view/View;II)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static moveToUpDown(Landroid/view/View;ZZ)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xfa

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveAnim is already running."

    invoke-static {v0}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    int-to-float v0, v0

    aput v0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static moveUpToHideForWave(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/android/incallui/util/SecAnimationUtils$Move$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/util/SecAnimationUtils$Move$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static moveUpToShow(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
