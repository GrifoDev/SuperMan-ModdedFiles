.class final Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleCumulateTask"
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
.field private static final serialVersionUID:J = -0x82541ef9af19ae1L


# instance fields
.field final array:[D

.field final fence:I

.field final function:Ljava/util/function/DoubleBinaryOperator;

.field final hi:I

.field in:D

.field left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final lo:I

.field final origin:I

.field out:D

.field right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V
    .locals 4
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

    .line 389
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 390
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 391
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 394
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 393
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 388
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 403
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 404
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 405
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 406
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 401
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 38

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    .local v6, "fn":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .local v7, "a":[D
    if-nez v7, :cond_1

    .line 413
    .end local v7    # "a":[D
    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 414
    .restart local v7    # "a":[D
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v10, "th":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v8, "org":I
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 415
    .local v9, "fnc":I
    move-object/from16 v5, p0

    .line 416
    :cond_2
    :goto_0
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move/from16 v20, v0

    .local v20, "l":I
    if-ltz v20, :cond_7

    iget v12, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .local v12, "h":I
    array-length v14, v7

    if-gt v12, v14, :cond_7

    .line 417
    sub-int v14, v12, v20

    if-le v14, v10, :cond_c

    .line 418
    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v13, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 419
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v13, :cond_4

    .line 420
    add-int v14, v20, v12

    ushr-int/lit8 v11, v14, 0x1

    .line 422
    .local v11, "mid":I
    new-instance v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    .line 421
    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object/from16 v24, v4

    .line 424
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    .line 423
    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v5, v13

    .line 456
    .end local v11    # "mid":I
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_3
    if-eqz v24, :cond_2

    .line 457
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 427
    :cond_4
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v32, v0

    .line 428
    .local v32, "pin":D
    move-wide/from16 v0, v32

    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 429
    const/4 v5, 0x0

    .local v5, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    const/16 v24, 0x0

    .line 430
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_6

    .line 431
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v28, v0

    .line 432
    .local v28, "lout":D
    move/from16 v0, v20

    if-ne v0, v8, :cond_8

    .end local v28    # "lout":D
    :goto_1
    move-wide/from16 v0, v28

    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 435
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    .local v23, "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_9

    .line 444
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    .restart local v23    # "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_a

    .line 453
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_3
    if-nez v5, :cond_3

    .line 409
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v12    # "h":I
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":D
    :cond_7
    :goto_4
    return-void

    .line 433
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v12    # "h":I
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v28    # "lout":D
    .restart local v32    # "pin":D
    :cond_8
    move-wide/from16 v0, v32

    move-wide/from16 v2, v28

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v28

    goto :goto_1

    .line 437
    .end local v28    # "lout":D
    .restart local v23    # "c":I
    :cond_9
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 438
    move-object v5, v4

    .line 439
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_2

    .line 446
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_a
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 447
    if-eqz v5, :cond_b

    .line 448
    move-object/from16 v24, v5

    .line 449
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_b
    move-object v5, v13

    .line 450
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_3

    .line 462
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":D
    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .local v22, "b":I
    and-int/lit8 v14, v22, 0x4

    if-nez v14, :cond_7

    .line 464
    and-int/lit8 v14, v22, 0x1

    if-eqz v14, :cond_d

    const/16 v34, 0x4

    .line 466
    .local v34, "state":I
    :goto_5
    or-int v14, v22, v34

    move/from16 v0, v22

    invoke-virtual {v5, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 471
    const/4 v14, 0x2

    move/from16 v0, v34

    if-eq v0, v14, :cond_10

    .line 473
    move/from16 v0, v20

    if-ne v0, v8, :cond_f

    .line 474
    aget-wide v36, v7, v8

    .line 475
    .local v36, "sum":D
    add-int/lit8 v25, v8, 0x1

    .line 481
    .local v25, "first":I
    :goto_6
    move/from16 v26, v25

    .local v26, "i":I
    :goto_7
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    .line 482
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v36

    aput-wide v36, v7, v26

    .line 481
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 465
    .end local v25    # "first":I
    .end local v26    # "i":I
    .end local v34    # "state":I
    .end local v36    # "sum":D
    :cond_d
    move/from16 v0, v20

    if-le v0, v8, :cond_e

    const/16 v34, 0x2

    goto :goto_5

    :cond_e
    const/16 v34, 0x6

    goto :goto_5

    .line 478
    .restart local v34    # "state":I
    :cond_f
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v36, v0

    .line 479
    .restart local v36    # "sum":D
    move/from16 v25, v20

    .restart local v25    # "first":I
    goto :goto_6

    .line 484
    .end local v25    # "first":I
    .end local v36    # "sum":D
    :cond_10
    if-ge v12, v9, :cond_11

    .line 485
    aget-wide v36, v7, v20

    .line 486
    .restart local v36    # "sum":D
    add-int/lit8 v26, v20, 0x1

    .restart local v26    # "i":I
    :goto_8
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    .line 487
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v36

    .line 486
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 490
    .end local v26    # "i":I
    .end local v36    # "sum":D
    :cond_11
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v36, v0

    .line 491
    .restart local v36    # "sum":D
    :cond_12
    move-wide/from16 v0, v36

    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 493
    :cond_13
    :goto_9
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v30, "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v30, :cond_14

    .line 494
    and-int/lit8 v14, v34, 0x4

    if-eqz v14, :cond_7

    .line 495
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    .line 498
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .line 499
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_15

    .line 500
    move-object/from16 v5, v30

    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_9

    .line 501
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_15
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_1a

    .line 503
    move-object/from16 v0, v30

    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v13, :cond_16

    .line 504
    move-object/from16 v0, v30

    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_16

    .line 505
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v28, v0

    .line 506
    .restart local v28    # "lout":D
    iget v14, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v14, v9, :cond_18

    .end local v28    # "lout":D
    :goto_a
    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 509
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_16
    and-int/lit8 v14, v22, 0x1

    if-nez v14, :cond_19

    .line 510
    move-object/from16 v0, v30

    iget v14, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v14, v8, :cond_19

    const/16 v31, 0x1

    .line 511
    .local v31, "refork":I
    :goto_b
    or-int v14, v22, v34

    or-int v27, v14, v31

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 512
    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    .line 511
    if-eqz v14, :cond_13

    .line 513
    :cond_17
    const/16 v34, 0x2

    .line 514
    move-object/from16 v5, v30

    .line 515
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v31, :cond_13

    .line 516
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    .line 507
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v28    # "lout":D
    :cond_18
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v0, v28

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v28

    goto :goto_a

    .line 510
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v28    # "lout":D
    :cond_19
    const/16 v31, 0x0

    goto :goto_b

    .line 519
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_1a
    or-int v14, v22, v34

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_13

    goto/16 :goto_4
.end method
