.class final Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
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
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[S

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[S

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[S[SIIIIII)V
    .locals 0
    .param p2, "a"    # [S
    .param p3, "w"    # [S
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[S[SIIIIII)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 498
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->a:[S

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->w:[S

    .line 499
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->lsize:I

    .line 500
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->rsize:I

    .line 501
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->gran:I

    .line 496
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->a:[S

    .local v4, "a":[S
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->w:[S

    .line 506
    .local v5, "w":[S
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->lbase:I

    move/from16 v16, v0

    .local v16, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->lsize:I

    move/from16 v20, v0

    .local v20, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->rbase:I

    move/from16 v22, v0

    .line 507
    .local v22, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->rsize:I

    move/from16 v26, v0

    .local v26, "rn":I
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->wbase:I

    .local v14, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;->gran:I

    .line 508
    .local v11, "g":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 509
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 508
    :cond_1
    if-ltz v16, :cond_0

    if-ltz v22, :cond_0

    if-ltz v14, :cond_0

    .line 511
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 512
    move/from16 v0, v20

    if-gt v0, v11, :cond_3

    .line 546
    :cond_2
    add-int v17, v16, v20

    .local v17, "lf":I
    add-int v23, v22, v26

    .local v23, "rf":I
    move v15, v14

    .line 547
    .end local v14    # "k":I
    .local v15, "k":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 549
    aget-short v12, v4, v16

    .local v12, "al":S
    aget-short v13, v4, v22

    .local v13, "ar":S
    if-gt v12, v13, :cond_8

    .line 550
    add-int/lit8 v16, v16, 0x1

    move/from16 v28, v12

    .line 555
    .local v28, "t":S
    :goto_2
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput-short v28, v5, v15

    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    goto :goto_1

    .line 514
    .end local v12    # "al":S
    .end local v13    # "ar":S
    .end local v15    # "k":I
    .end local v17    # "lf":I
    .end local v23    # "rf":I
    .end local v28    # "t":S
    .restart local v14    # "k":I
    :cond_3
    move/from16 v24, v26

    .line 515
    .local v24, "rh":I
    ushr-int/lit8 v18, v20, 0x1

    .local v18, "lh":I
    add-int v3, v18, v16

    aget-short v27, v4, v3

    .line 516
    .local v27, "split":S
    const/16 v21, 0x0

    .local v21, "lo":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 517
    add-int v3, v21, v24

    ushr-int/lit8 v25, v3, 0x1

    .line 518
    .local v25, "rm":I
    add-int v3, v25, v22

    aget-short v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_4

    .line 519
    move/from16 v24, v25

    goto :goto_3

    .line 521
    :cond_4
    add-int/lit8 v21, v25, 0x1

    goto :goto_3

    .line 525
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v25    # "rm":I
    .end local v27    # "split":S
    :cond_5
    move/from16 v0, v26

    if-le v0, v11, :cond_2

    .line 527
    move/from16 v18, v20

    .line 528
    .restart local v18    # "lh":I
    ushr-int/lit8 v24, v26, 0x1

    .restart local v24    # "rh":I
    add-int v3, v24, v22

    aget-short v27, v4, v3

    .line 529
    .restart local v27    # "split":S
    const/16 v21, 0x0

    .restart local v21    # "lo":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 530
    add-int v3, v21, v18

    ushr-int/lit8 v19, v3, 0x1

    .line 531
    .local v19, "lm":I
    add-int v3, v19, v16

    aget-short v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_6

    .line 532
    move/from16 v18, v19

    goto :goto_4

    .line 534
    :cond_6
    add-int/lit8 v21, v19, 0x1

    goto :goto_4

    .line 537
    .end local v19    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;

    add-int v6, v16, v18

    sub-int v7, v20, v18

    .line 538
    add-int v8, v22, v24

    sub-int v9, v26, v24

    .line 539
    add-int v3, v14, v18

    add-int v10, v3, v24

    move-object/from16 v3, p0

    .line 537
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIIIII)V

    .line 540
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;
    move/from16 v26, v24

    .line 541
    move/from16 v20, v18

    .line 542
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 543
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    .line 553
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJShort$Merger;
    .end local v14    # "k":I
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v27    # "split":S
    .restart local v12    # "al":S
    .restart local v13    # "ar":S
    .restart local v15    # "k":I
    .restart local v17    # "lf":I
    .restart local v23    # "rf":I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    move/from16 v28, v13

    .restart local v28    # "t":S
    goto :goto_2

    .line 557
    .end local v12    # "al":S
    .end local v13    # "ar":S
    .end local v28    # "t":S
    :cond_9
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 558
    sub-int v3, v23, v22

    move/from16 v0, v22

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 561
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 504
    return-void

    .line 559
    :cond_b
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 560
    sub-int v3, v17, v16

    move/from16 v0, v16

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_5
.end method
