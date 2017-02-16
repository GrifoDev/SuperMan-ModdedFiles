.class public Lcom/android/incallui/util/SecAnimationUtils$Move;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


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

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 28
    .param p0, "target"    # Landroid/view/View;
    .param p1, "startView"    # Landroid/view/View;
    .param p2, "endView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    .line 441
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 442
    :cond_0
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_1

    const-string v24, "checkAndMove: no move: at least one view is null"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_3

    .line 447
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v22

    .line 451
    .local v22, "targetX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v23

    .line 452
    .local v23, "targetY":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 453
    .local v20, "targetH":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v21, v0

    .line 455
    .local v21, "targetW":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v18

    .line 456
    .local v18, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v6

    .line 457
    .local v6, "endX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v19

    .line 458
    .local v19, "startY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    .line 459
    .local v7, "endY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v25

    mul-float v16, v24, v25

    .line 460
    .local v16, "startH":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v25

    mul-float v4, v24, v25

    .line 461
    .local v4, "endH":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v25

    mul-float v17, v24, v25

    .line 462
    .local v17, "startW":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v25

    mul-float v5, v24, v25

    .line 463
    .local v5, "endW":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v17, v24

    .line 464
    .local v8, "fromScaleX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v9, v16, v24

    .line 473
    .local v9, "fromScaleY":F
    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    cmpl-float v24, v17, v24

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    cmpl-float v24, v4, v24

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    cmpl-float v24, v5, v24

    if-nez v24, :cond_6

    .line 474
    :cond_4
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "checkAndMove: no move: view\'s width or height is zero"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 475
    :cond_5
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 476
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "checkAndMove: startW: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", startH: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", endW: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", endH: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_6
    const/4 v15, 0x0

    .line 482
    .local v15, "needToMoveImmediately":Z
    if-nez p3, :cond_8

    .line 483
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "checkAndMove: move immediately: duration is zero"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 484
    :cond_7
    const/4 v15, 0x1

    .line 487
    :cond_8
    move/from16 v0, v22

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_a

    move/from16 v0, v23

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_a

    move/from16 v0, v21

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_a

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_a

    .line 488
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_9

    const-string v24, "checkAndMove: move immediately: it is same location"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 489
    :cond_9
    const/4 v15, 0x1

    .line 492
    :cond_a
    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_c

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_c

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_c

    move/from16 v0, v16

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_c

    .line 493
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v24

    if-eqz v24, :cond_b

    const-string v24, "checkAndMove: move immediately: maybe start view == end view"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 494
    :cond_b
    const/4 v15, 0x1

    .line 497
    :cond_c
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 498
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 502
    if-eqz v15, :cond_d

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 505
    div-float v24, v5, v17

    mul-float v24, v24, v8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 506
    div-float v24, v4, v16

    mul-float v24, v24, v9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 511
    :cond_d
    const-string v24, "y"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v19, v25, v26

    const/16 v26, 0x1

    aput v7, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 512
    .local v14, "moveAnimY":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 513
    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 514
    const-string v24, "x"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v18, v25, v26

    const/16 v26, 0x1

    aput v6, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 515
    .local v13, "moveAnimX":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    const-string v24, "scaleX"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v8, v25, v26

    const/16 v26, 0x1

    div-float v27, v5, v17

    mul-float v27, v27, v8

    aput v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 519
    .local v12, "moveAnimW":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 520
    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 521
    const-string v24, "scaleY"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v9, v25, v26

    const/16 v26, 0x1

    div-float v27, v4, v16

    mul-float v27, v27, v9

    aput v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 522
    .local v11, "moveAnimH":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 526
    .local v10, "moveAnim":Landroid/animation/AnimatorSet;
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 527
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 528
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 531
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static move(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "target"    # Landroid/view/View;
    .param p1, "startView"    # Landroid/view/View;
    .param p2, "endView"    # Landroid/view/View;

    .prologue
    .line 315
    const/16 v0, 0xfa

    invoke-static {p0, p1, p2, v0}, Lcom/android/incallui/util/SecAnimationUtils$Move;->move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 316
    return-void
.end method

.method public static move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 23
    .param p0, "target"    # Landroid/view/View;
    .param p1, "startView"    # Landroid/view/View;
    .param p2, "endView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    .line 331
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 332
    :cond_0
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "Move: no move: at least one view is null"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_1

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v17

    .line 339
    .local v17, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v6

    .line 340
    .local v6, "endX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v18

    .line 341
    .local v18, "startY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    .line 342
    .local v7, "endY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v20

    mul-float v15, v19, v20

    .line 343
    .local v15, "startH":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v20

    mul-float v4, v19, v20

    .line 344
    .local v4, "endH":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v20

    mul-float v16, v19, v20

    .line 345
    .local v16, "startW":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v20

    mul-float v5, v19, v20

    .line 346
    .local v5, "endW":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v16, v19

    .line 347
    .local v8, "fromScaleX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v15, v19

    .line 356
    .local v9, "fromScaleY":F
    const/16 v19, 0x0

    cmpl-float v19, v15, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v16, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-nez v19, :cond_5

    .line 357
    :cond_3
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "Move: no move: view\'s width or height is zero "

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 358
    :cond_4
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 359
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Move: startW: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startH: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", endW: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", endH: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_5
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 364
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 368
    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v18, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 369
    .local v14, "moveAnimY":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    const/16 v21, 0x1

    aput v6, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 372
    .local v13, "moveAnimX":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    const-string v19, "scaleX"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    div-float v22, v5, v16

    mul-float v22, v22, v8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 376
    .local v12, "moveAnimW":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 377
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    const-string v19, "scaleY"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    div-float v22, v4, v15

    mul-float v22, v22, v9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 379
    .local v11, "moveAnimH":Landroid/animation/ValueAnimator;
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 383
    .local v10, "moveAnim":Landroid/animation/AnimatorSet;
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 384
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 385
    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 388
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static moveDownToHide(Landroid/view/View;Z)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "alphaEffect"    # Z

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 607
    if-nez p0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 611
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    .line 613
    .local v2, "animationTrl":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .end local v2    # "animationTrl":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 614
    .restart local v2    # "animationTrl":Landroid/view/animation/Animation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 615
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 616
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 617
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 618
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 620
    if-eqz p1, :cond_1

    .line 621
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 622
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 623
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 624
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 625
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 626
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 628
    .end local v0    # "alpha":Landroid/view/animation/Animation;
    :cond_1
    new-instance v3, Lcom/android/incallui/util/SecAnimationUtils$Move$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/util/SecAnimationUtils$Move$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 643
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static movePosition(Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p0, "target"    # Landroid/view/View;
    .param p1, "endView"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 535
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 536
    :cond_0
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "movePosition: no move: at least one view is null"

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    .line 564
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_3

    .line 541
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v6, v8

    .line 545
    .local v6, "targetH":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 547
    .local v7, "targetW":F
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    .line 548
    .local v2, "endX":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    .line 549
    .local v3, "endY":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    mul-float v0, v8, v9

    .line 550
    .local v0, "endH":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v9

    mul-float v1, v8, v9

    .line 551
    .local v1, "endW":F
    div-float v4, v1, v7

    .line 552
    .local v4, "scaleX":F
    div-float v5, v0, v6

    .line 554
    .local v5, "scaleY":F
    cmpl-float v8, v0, v10

    if-eqz v8, :cond_4

    cmpl-float v8, v1, v10

    if-nez v8, :cond_5

    .line 555
    :cond_4
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "movePosition: no move - endW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", endH: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    .line 560
    invoke-virtual {p0, v3}, Landroid/view/View;->setY(F)V

    .line 561
    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 562
    invoke-virtual {p0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static moveToDown(Landroid/view/View;II)V
    .locals 6
    .param p0, "target"    # Landroid/view/View;
    .param p1, "targetH"    # I
    .param p2, "duration"    # I

    .prologue
    .line 422
    if-nez p0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 427
    .local v0, "moveAnim":Landroid/animation/AnimatorSet;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, p1

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 428
    .local v1, "viewContainer":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 429
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 431
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static moveToUpDown(Landroid/view/View;ZZ)V
    .locals 8
    .param p0, "target"    # Landroid/view/View;
    .param p1, "show"    # Z
    .param p2, "hasNavigationBar"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 393
    if-nez p0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const/16 v0, 0xfa

    .line 397
    .local v0, "duration":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 398
    .local v2, "targetH":I
    if-eqz p2, :cond_2

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 401
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 402
    .local v1, "moveAnim":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_3

    .line 403
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 404
    .local v3, "viewContainer":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 410
    :goto_1
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 414
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 415
    # getter for: Lcom/android/incallui/util/SecAnimationUtils;->ENG_DBG:Z
    invoke-static {}, Lcom/android/incallui/util/SecAnimationUtils;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "moveAnim is already running."

    # invokes: Lcom/android/incallui/util/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/incallui/util/SecAnimationUtils;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    .end local v3    # "viewContainer":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    int-to-float v6, v2

    aput v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 407
    .restart local v3    # "viewContainer":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public static moveUpToHideForWave(Landroid/view/View;)V
    .locals 5
    .param p0, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 653
    if-nez p0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 656
    :cond_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 657
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 659
    .local v1, "animationTrl":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "animationTrl":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 660
    .restart local v1    # "animationTrl":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 661
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 662
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 663
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 664
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 666
    new-instance v2, Lcom/android/incallui/util/SecAnimationUtils$Move$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/util/SecAnimationUtils$Move$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 681
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static moveUpToShow(Landroid/view/View;Z)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "alphaEffect"    # Z

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 573
    if-nez p0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 577
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x0

    .line 579
    .local v2, "animationTrl":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 580
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 581
    .end local v2    # "animationTrl":Landroid/view/animation/Animation;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 582
    .restart local v2    # "animationTrl":Landroid/view/animation/Animation;
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 583
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 584
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 585
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 586
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 588
    if-eqz p1, :cond_1

    .line 589
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 590
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 591
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 592
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 593
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 594
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 597
    .end local v0    # "alpha":Landroid/view/animation/Animation;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
