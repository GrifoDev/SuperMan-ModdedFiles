.class final Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJByte;
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
.field final a:[B

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[B

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[B[BIIIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->a:[B

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->w:[B

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->lsize:I

    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->rsize:I

    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->gran:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->w:[B

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->lbase:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->lsize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->rbase:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->rsize:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->wbase:I

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;->gran:I

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    if-ltz v16, :cond_0

    if-ltz v22, :cond_0

    if-ltz v14, :cond_0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    move/from16 v0, v20

    if-gt v0, v11, :cond_3

    :cond_2
    add-int v17, v16, v20

    add-int v23, v22, v26

    move v15, v14

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    aget-byte v12, v4, v16

    aget-byte v13, v4, v22

    if-gt v12, v13, :cond_8

    add-int/lit8 v16, v16, 0x1

    move/from16 v28, v12

    :goto_2
    add-int/lit8 v14, v15, 0x1

    aput-byte v28, v5, v15

    move v15, v14

    goto :goto_1

    :cond_3
    move/from16 v24, v26

    ushr-int/lit8 v18, v20, 0x1

    add-int v3, v18, v16

    aget-byte v27, v4, v3

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    add-int v3, v21, v24

    ushr-int/lit8 v25, v3, 0x1

    add-int v3, v25, v22

    aget-byte v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_4

    move/from16 v24, v25

    goto :goto_3

    :cond_4
    add-int/lit8 v21, v25, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v26

    if-le v0, v11, :cond_2

    move/from16 v18, v20

    ushr-int/lit8 v24, v26, 0x1

    add-int v3, v24, v22

    aget-byte v27, v4, v3

    const/16 v21, 0x0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    add-int v3, v21, v18

    ushr-int/lit8 v19, v3, 0x1

    add-int v3, v19, v16

    aget-byte v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_6

    move/from16 v18, v19

    goto :goto_4

    :cond_6
    add-int/lit8 v21, v19, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    add-int v6, v16, v18

    sub-int v7, v20, v18

    add-int v8, v22, v24

    sub-int v9, v26, v24

    add-int v3, v14, v18

    add-int v10, v3, v24

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    move/from16 v26, v24

    move/from16 v20, v18

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v22, v22, 0x1

    move/from16 v28, v13

    goto :goto_2

    :cond_9
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    sub-int v3, v23, v22

    move/from16 v0, v22

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void

    :cond_b
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    sub-int v3, v17, v16

    move/from16 v0, v16

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_5
.end method
