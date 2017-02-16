.class final Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final array:[I

.field final fence:I

.field final function:Ljava/util/function/IntBinaryOperator;

.field final hi:I

.field in:I

.field left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final lo:I

.field final origin:I

.field out:I

.field right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .locals 4
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

    .line 539
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 540
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 541
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 544
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 543
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 538
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
    .line 552
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 553
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 554
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 555
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 556
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 551
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 33

    .prologue
    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    .local v5, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .local v6, "a":[I
    if-nez v6, :cond_1

    .line 563
    .end local v6    # "a":[I
    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 564
    .restart local v6    # "a":[I
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v9, "th":I
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v7, "org":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 565
    .local v8, "fnc":I
    move-object/from16 v4, p0

    .line 566
    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move/from16 v19, v0

    .local v19, "l":I
    if-ltz v19, :cond_7

    iget v11, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .local v11, "h":I
    array-length v13, v6

    if-gt v11, v13, :cond_7

    .line 567
    sub-int v13, v11, v19

    if-le v13, v9, :cond_c

    .line 568
    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 569
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v12, :cond_4

    .line 570
    add-int v13, v19, v11

    ushr-int/lit8 v10, v13, 0x1

    .line 572
    .local v10, "mid":I
    new-instance v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    .line 571
    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object/from16 v23, v3

    .line 574
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    .line 573
    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v4, v12

    .line 606
    .end local v10    # "mid":I
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_3
    if-eqz v23, :cond_2

    .line 607
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 577
    :cond_4
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v29, v0

    .line 578
    .local v29, "pin":I
    move/from16 v0, v29

    iput v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 579
    const/4 v4, 0x0

    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    const/16 v23, 0x0

    .line 580
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_6

    .line 581
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    .line 582
    .local v26, "lout":I
    move/from16 v0, v19

    if-ne v0, v7, :cond_8

    .end local v26    # "lout":I
    :goto_1
    move/from16 v0, v26

    iput v0, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 585
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .local v22, "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_9

    .line 594
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .restart local v22    # "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_a

    .line 603
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_3
    if-nez v4, :cond_3

    .line 559
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v11    # "h":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_7
    :goto_4
    return-void

    .line 583
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v11    # "h":I
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    .restart local v29    # "pin":I
    :cond_8
    move/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_1

    .line 587
    .end local v26    # "lout":I
    .restart local v22    # "c":I
    :cond_9
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 588
    move-object v4, v3

    .line 589
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_2

    .line 596
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_a
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 597
    if-eqz v4, :cond_b

    .line 598
    move-object/from16 v23, v4

    .line 599
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_b
    move-object v4, v12

    .line 600
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_3

    .line 612
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_c
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    .local v21, "b":I
    and-int/lit8 v13, v21, 0x4

    if-nez v13, :cond_7

    .line 614
    and-int/lit8 v13, v21, 0x1

    if-eqz v13, :cond_d

    const/16 v31, 0x4

    .line 616
    .local v31, "state":I
    :goto_5
    or-int v13, v21, v31

    move/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 621
    const/4 v13, 0x2

    move/from16 v0, v31

    if-eq v0, v13, :cond_10

    .line 623
    move/from16 v0, v19

    if-ne v0, v7, :cond_f

    .line 624
    aget v32, v6, v7

    .line 625
    .local v32, "sum":I
    add-int/lit8 v24, v7, 0x1

    .line 631
    .local v24, "first":I
    :goto_6
    move/from16 v25, v24

    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    .line 632
    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    aput v32, v6, v25

    .line 631
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 615
    .end local v24    # "first":I
    .end local v25    # "i":I
    .end local v31    # "state":I
    .end local v32    # "sum":I
    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    const/16 v31, 0x2

    goto :goto_5

    :cond_e
    const/16 v31, 0x6

    goto :goto_5

    .line 628
    .restart local v31    # "state":I
    :cond_f
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    .line 629
    .restart local v32    # "sum":I
    move/from16 v24, v19

    .restart local v24    # "first":I
    goto :goto_6

    .line 634
    .end local v24    # "first":I
    .end local v32    # "sum":I
    :cond_10
    if-ge v11, v8, :cond_11

    .line 635
    aget v32, v6, v19

    .line 636
    .restart local v32    # "sum":I
    add-int/lit8 v25, v19, 0x1

    .restart local v25    # "i":I
    :goto_8
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    .line 637
    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    .line 636
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 640
    .end local v25    # "i":I
    .end local v32    # "sum":I
    :cond_11
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    .line 641
    .restart local v32    # "sum":I
    :cond_12
    move/from16 v0, v32

    iput v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 643
    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v28, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v28, :cond_14

    .line 644
    and-int/lit8 v13, v31, 0x4

    if-eqz v13, :cond_7

    .line 645
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    .line 648
    :cond_14
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    .line 649
    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_15

    .line 650
    move-object/from16 v4, v28

    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_9

    .line 651
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_15
    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1a

    .line 653
    move-object/from16 v0, v28

    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v12, :cond_16

    .line 654
    move-object/from16 v0, v28

    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_16

    .line 655
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    .line 656
    .restart local v26    # "lout":I
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v13, v8, :cond_18

    .end local v26    # "lout":I
    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 659
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_16
    and-int/lit8 v13, v21, 0x1

    if-nez v13, :cond_19

    .line 660
    move-object/from16 v0, v28

    iget v13, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v13, v7, :cond_19

    const/16 v30, 0x1

    .line 661
    .local v30, "refork":I
    :goto_b
    or-int v13, v21, v31

    or-int v27, v13, v30

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 662
    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    .line 661
    if-eqz v13, :cond_13

    .line 663
    :cond_17
    const/16 v31, 0x2

    .line 664
    move-object/from16 v4, v28

    .line 665
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v30, :cond_13

    .line 666
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    .line 657
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v27    # "nextState":I
    .end local v30    # "refork":I
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    :cond_18
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v0, v26

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_a

    .line 660
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v26    # "lout":I
    :cond_19
    const/16 v30, 0x0

    goto :goto_b

    .line 669
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1a
    or-int v13, v21, v31

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_4
.end method
