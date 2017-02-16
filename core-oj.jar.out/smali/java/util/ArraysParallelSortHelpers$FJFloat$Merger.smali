.class final Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJFloat;
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
.field final a:[F

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[F

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V
    .locals 0
    .param p2, "a"    # [F
    .param p3, "w"    # [F
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
            "<*>;[F[FIIIIII)V"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 831
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    .line 832
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    .line 833
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    .line 834
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    .line 829
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    .local v4, "a":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    .line 839
    .local v5, "w":[F
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    move/from16 v16, v0

    .local v16, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    move/from16 v20, v0

    .local v20, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    move/from16 v22, v0

    .line 840
    .local v22, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    move/from16 v26, v0

    .local v26, "rn":I
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    .local v14, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    .line 841
    .local v11, "g":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 842
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 841
    :cond_1
    if-ltz v16, :cond_0

    if-ltz v22, :cond_0

    if-ltz v14, :cond_0

    .line 844
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 845
    move/from16 v0, v20

    if-gt v0, v11, :cond_3

    .line 879
    :cond_2
    add-int v17, v16, v20

    .local v17, "lf":I
    add-int v23, v22, v26

    .local v23, "rf":I
    move v15, v14

    .line 880
    .end local v14    # "k":I
    .local v15, "k":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 882
    aget v12, v4, v16

    .local v12, "al":F
    aget v13, v4, v22

    .local v13, "ar":F
    cmpg-float v3, v12, v13

    if-gtz v3, :cond_8

    .line 883
    add-int/lit8 v16, v16, 0x1

    move/from16 v28, v12

    .line 888
    .local v28, "t":F
    :goto_2
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput v28, v5, v15

    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    goto :goto_1

    .line 847
    .end local v12    # "al":F
    .end local v13    # "ar":F
    .end local v15    # "k":I
    .end local v17    # "lf":I
    .end local v23    # "rf":I
    .end local v28    # "t":F
    .restart local v14    # "k":I
    :cond_3
    move/from16 v24, v26

    .line 848
    .local v24, "rh":I
    ushr-int/lit8 v18, v20, 0x1

    .local v18, "lh":I
    add-int v3, v18, v16

    aget v27, v4, v3

    .line 849
    .local v27, "split":F
    const/16 v21, 0x0

    .local v21, "lo":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 850
    add-int v3, v21, v24

    ushr-int/lit8 v25, v3, 0x1

    .line 851
    .local v25, "rm":I
    add-int v3, v25, v22

    aget v3, v4, v3

    cmpg-float v3, v27, v3

    if-gtz v3, :cond_4

    .line 852
    move/from16 v24, v25

    goto :goto_3

    .line 854
    :cond_4
    add-int/lit8 v21, v25, 0x1

    goto :goto_3

    .line 858
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v25    # "rm":I
    .end local v27    # "split":F
    :cond_5
    move/from16 v0, v26

    if-le v0, v11, :cond_2

    .line 860
    move/from16 v18, v20

    .line 861
    .restart local v18    # "lh":I
    ushr-int/lit8 v24, v26, 0x1

    .restart local v24    # "rh":I
    add-int v3, v24, v22

    aget v27, v4, v3

    .line 862
    .restart local v27    # "split":F
    const/16 v21, 0x0

    .restart local v21    # "lo":I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 863
    add-int v3, v21, v18

    ushr-int/lit8 v19, v3, 0x1

    .line 864
    .local v19, "lm":I
    add-int v3, v19, v16

    aget v3, v4, v3

    cmpg-float v3, v27, v3

    if-gtz v3, :cond_6

    .line 865
    move/from16 v18, v19

    goto :goto_4

    .line 867
    :cond_6
    add-int/lit8 v21, v19, 0x1

    goto :goto_4

    .line 870
    .end local v19    # "lm":I
    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;

    add-int v6, v16, v18

    sub-int v7, v20, v18

    .line 871
    add-int v8, v22, v24

    sub-int v9, v26, v24

    .line 872
    add-int v3, v14, v18

    add-int v10, v3, v24

    move-object/from16 v3, p0

    .line 870
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V

    .line 873
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    move/from16 v26, v24

    .line 874
    move/from16 v20, v18

    .line 875
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 876
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    .line 886
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    .end local v14    # "k":I
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v27    # "split":F
    .restart local v12    # "al":F
    .restart local v13    # "ar":F
    .restart local v15    # "k":I
    .restart local v17    # "lf":I
    .restart local v23    # "rf":I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    move/from16 v28, v13

    .restart local v28    # "t":F
    goto :goto_2

    .line 890
    .end local v12    # "al":F
    .end local v13    # "ar":F
    .end local v28    # "t":F
    :cond_9
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 891
    sub-int v3, v23, v22

    move/from16 v0, v22

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 894
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 837
    return-void

    .line 892
    :cond_b
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 893
    sub-int v3, v17, v16

    move/from16 v0, v16

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_5
.end method
