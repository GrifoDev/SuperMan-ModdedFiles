.class final Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJLong;
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
.field final a:[J

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[J

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V
    .locals 0
    .param p2, "a"    # [J
    .param p3, "w"    # [J
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
            "<*>;[J[JIIIIII)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 720
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->a:[J

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->w:[J

    .line 721
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lsize:I

    .line 722
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rsize:I

    .line 723
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->gran:I

    .line 718
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    .prologue
    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->a:[J

    .local v4, "a":[J
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->w:[J

    .line 728
    .local v5, "w":[J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lbase:I

    move/from16 v18, v0

    .local v18, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->lsize:I

    move/from16 v22, v0

    .local v22, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rbase:I

    move/from16 v24, v0

    .line 729
    .local v24, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->rsize:I

    move/from16 v28, v0

    .local v28, "rn":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->wbase:I

    move/from16 v16, v0

    .local v16, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;->gran:I

    .line 730
    .local v11, "g":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 731
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 730
    :cond_1
    if-ltz v18, :cond_0

    if-ltz v24, :cond_0

    if-ltz v16, :cond_0

    .line 733
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    .line 734
    move/from16 v0, v22

    if-gt v0, v11, :cond_3

    .line 768
    :cond_2
    add-int v19, v18, v22

    .local v19, "lf":I
    add-int v25, v24, v28

    .local v25, "rf":I
    move/from16 v17, v16

    .line 769
    .end local v16    # "k":I
    .local v17, "k":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 771
    aget-wide v12, v4, v18

    .local v12, "al":J
    aget-wide v14, v4, v24

    .local v14, "ar":J
    cmp-long v3, v12, v14

    if-gtz v3, :cond_8

    .line 772
    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v32, v12

    .line 777
    .local v32, "t":J
    :goto_2
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput-wide v32, v5, v17

    move/from16 v17, v16

    .end local v16    # "k":I
    .restart local v17    # "k":I
    goto :goto_1

    .line 736
    .end local v12    # "al":J
    .end local v14    # "ar":J
    .end local v17    # "k":I
    .end local v19    # "lf":I
    .end local v25    # "rf":I
    .end local v32    # "t":J
    .restart local v16    # "k":I
    :cond_3
    move/from16 v26, v28

    .line 737
    .local v26, "rh":I
    ushr-int/lit8 v20, v22, 0x1

    .local v20, "lh":I
    add-int v3, v20, v18

    aget-wide v30, v4, v3

    .line 738
    .local v30, "split":J
    const/16 v23, 0x0

    .local v23, "lo":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 739
    add-int v3, v23, v26

    ushr-int/lit8 v27, v3, 0x1

    .line 740
    .local v27, "rm":I
    add-int v3, v27, v24

    aget-wide v6, v4, v3

    cmp-long v3, v30, v6

    if-gtz v3, :cond_4

    .line 741
    move/from16 v26, v27

    goto :goto_3

    .line 743
    :cond_4
    add-int/lit8 v23, v27, 0x1

    goto :goto_3

    .line 747
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v27    # "rm":I
    .end local v30    # "split":J
    :cond_5
    move/from16 v0, v28

    if-le v0, v11, :cond_2

    .line 749
    move/from16 v20, v22

    .line 750
    .restart local v20    # "lh":I
    ushr-int/lit8 v26, v28, 0x1

    .restart local v26    # "rh":I
    add-int v3, v26, v24

    aget-wide v30, v4, v3

    .line 751
    .restart local v30    # "split":J
    const/16 v23, 0x0

    .restart local v23    # "lo":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 752
    add-int v3, v23, v20

    ushr-int/lit8 v21, v3, 0x1

    .line 753
    .local v21, "lm":I
    add-int v3, v21, v18

    aget-wide v6, v4, v3

    cmp-long v3, v30, v6

    if-gtz v3, :cond_6

    .line 754
    move/from16 v20, v21

    goto :goto_4

    .line 756
    :cond_6
    add-int/lit8 v23, v21, 0x1

    goto :goto_4

    .line 759
    .end local v21    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;

    add-int v6, v18, v20

    sub-int v7, v22, v20

    .line 760
    add-int v8, v24, v26

    sub-int v9, v28, v26

    .line 761
    add-int v3, v16, v20

    add-int v10, v3, v26

    move-object/from16 v3, p0

    .line 759
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V

    .line 762
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
    move/from16 v28, v26

    .line 763
    move/from16 v22, v20

    .line 764
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 765
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    .line 775
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;
    .end local v16    # "k":I
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v30    # "split":J
    .restart local v12    # "al":J
    .restart local v14    # "ar":J
    .restart local v17    # "k":I
    .restart local v19    # "lf":I
    .restart local v25    # "rf":I
    :cond_8
    add-int/lit8 v24, v24, 0x1

    move-wide/from16 v32, v14

    .restart local v32    # "t":J
    goto :goto_2

    .line 779
    .end local v12    # "al":J
    .end local v14    # "ar":J
    .end local v32    # "t":J
    :cond_9
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 780
    sub-int v3, v25, v24

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 783
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 726
    return-void

    .line 781
    :cond_b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 782
    sub-int v3, v19, v18

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_5
.end method
