.class Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 585
    const/4 v6, 0x1

    .line 586
    .local v6, "callAgain":Z
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 587
    .local v5, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 588
    .local v10, "delayedAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 592
    :pswitch_0
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 593
    .local v16, "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 594
    :cond_1
    const/4 v6, 0x0

    .line 601
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_6

    .line 620
    .end local v16    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 621
    .local v8, "currentTime":J
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 622
    .local v18, "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 626
    .local v11, "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 627
    .local v14, "numDelayedAnims":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v14, :cond_8

    .line 633
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 634
    .local v15, "numReadyAnims":I
    if-lez v15, :cond_3

    .line 635
    const/4 v12, 0x0

    :goto_2
    if-lt v12, v15, :cond_a

    .line 641
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 646
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 647
    .local v13, "numAnims":I
    const/4 v12, 0x0

    .line 648
    :goto_3
    if-lt v12, v13, :cond_b

    .line 667
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 668
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_e

    .line 671
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 677
    :cond_5
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v22

    .line 678
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    .line 677
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 603
    .end local v8    # "currentTime":J
    .end local v11    # "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v12    # "i":I
    .end local v13    # "numAnims":I
    .end local v14    # "numDelayedAnims":I
    .end local v15    # "numReadyAnims":I
    .end local v18    # "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v16    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 604
    .local v17, "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 606
    .local v7, "count":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v7, :cond_2

    .line 607
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 609
    .local v4, "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$5(Lcom/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_7

    .line 610
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 606
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 612
    :cond_7
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 628
    .end local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    .end local v7    # "count":I
    .end local v16    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .end local v17    # "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v8    # "currentTime":J
    .restart local v11    # "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    .restart local v14    # "numDelayedAnims":I
    .restart local v18    # "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/animation/ValueAnimator;>;"
    :cond_8
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 629
    .restart local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->access$9(Lcom/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 630
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 636
    .end local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    .restart local v15    # "numReadyAnims":I
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 637
    .restart local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$6(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 638
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->access$10(Lcom/nineoldandroids/animation/ValueAnimator;Z)V

    .line 639
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 649
    .end local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    .restart local v13    # "numAnims":I
    :cond_b
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 650
    .restart local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {v4, v8, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 651
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_d

    .line 654
    add-int/lit8 v12, v12, 0x1

    .line 655
    goto/16 :goto_3

    .line 663
    :cond_d
    add-int/lit8 v13, v13, -0x1

    .line 664
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 669
    .end local v4    # "anim":Lcom/nineoldandroids/animation/ValueAnimator;
    :cond_e
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/nineoldandroids/animation/ValueAnimator;

    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/nineoldandroids/animation/ValueAnimator;->access$11(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 668
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
