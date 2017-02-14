.class final Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJDouble;
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
.field final a:[D

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[D

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[D[DIIIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->a:[D

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->w:[D

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lsize:I

    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rsize:I

    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->gran:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->a:[D

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->w:[D

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lbase:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lsize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rbase:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rsize:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->wbase:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->gran:I

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    if-ltz v18, :cond_0

    if-ltz v24, :cond_0

    if-ltz v16, :cond_0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    move/from16 v0, v22

    if-gt v0, v11, :cond_3

    :cond_2
    add-int v19, v18, v22

    add-int v25, v24, v28

    move/from16 v17, v16

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    aget-wide v12, v4, v18

    aget-wide v14, v4, v24

    cmpg-double v3, v12, v14

    if-gtz v3, :cond_8

    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v32, v12

    :goto_2
    add-int/lit8 v16, v17, 0x1

    aput-wide v32, v5, v17

    move/from16 v17, v16

    goto :goto_1

    :cond_3
    move/from16 v26, v28

    ushr-int/lit8 v20, v22, 0x1

    add-int v3, v20, v18

    aget-wide v30, v4, v3

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    add-int v3, v23, v26

    ushr-int/lit8 v27, v3, 0x1

    add-int v3, v27, v24

    aget-wide v6, v4, v3

    cmpg-double v3, v30, v6

    if-gtz v3, :cond_4

    move/from16 v26, v27

    goto :goto_3

    :cond_4
    add-int/lit8 v23, v27, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v28

    if-le v0, v11, :cond_2

    move/from16 v20, v22

    ushr-int/lit8 v26, v28, 0x1

    add-int v3, v26, v24

    aget-wide v30, v4, v3

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    add-int v3, v23, v20

    ushr-int/lit8 v21, v3, 0x1

    add-int v3, v21, v18

    aget-wide v6, v4, v3

    cmpg-double v3, v30, v6

    if-gtz v3, :cond_6

    move/from16 v20, v21

    goto :goto_4

    :cond_6
    add-int/lit8 v23, v21, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;

    add-int v6, v18, v20

    sub-int v7, v22, v20

    add-int v8, v24, v26

    sub-int v9, v28, v26

    add-int v3, v16, v20

    add-int v10, v3, v26

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V

    move/from16 v28, v26

    move/from16 v22, v20

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v24, v24, 0x1

    move-wide/from16 v32, v14

    goto :goto_2

    :cond_9
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    sub-int v3, v25, v24

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([DI[DII)V

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void

    :cond_b
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    sub-int v3, v19, v18

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([DI[DII)V

    goto :goto_5
.end method
