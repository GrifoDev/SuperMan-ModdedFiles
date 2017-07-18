.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[TT;[TT;IIIIII",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    iput-object p10, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    if-ltz v17, :cond_0

    if-ltz v23, :cond_0

    if-ltz v15, :cond_0

    if-eqz v12, :cond_0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    move/from16 v0, v21

    if-gt v0, v11, :cond_3

    :cond_2
    add-int v18, v17, v21

    add-int v24, v23, v27

    move/from16 v16, v15

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    aget-object v13, v4, v17

    aget-object v14, v4, v23

    invoke-interface {v12, v13, v14}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_8

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v29, v13

    :goto_2
    add-int/lit8 v15, v16, 0x1

    aput-object v29, v5, v16

    move/from16 v16, v15

    goto :goto_1

    :cond_3
    move/from16 v25, v27

    ushr-int/lit8 v19, v21, 0x1

    add-int v3, v19, v17

    aget-object v28, v4, v3

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    add-int v3, v22, v25

    ushr-int/lit8 v26, v3, 0x1

    add-int v3, v26, v23

    aget-object v3, v4, v3

    move-object/from16 v0, v28

    invoke-interface {v12, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_4

    move/from16 v25, v26

    goto :goto_3

    :cond_4
    add-int/lit8 v22, v26, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v27

    if-le v0, v11, :cond_2

    move/from16 v19, v21

    ushr-int/lit8 v25, v27, 0x1

    add-int v3, v25, v23

    aget-object v28, v4, v3

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    add-int v3, v22, v19

    ushr-int/lit8 v20, v3, 0x1

    add-int v3, v20, v17

    aget-object v3, v4, v3

    move-object/from16 v0, v28

    invoke-interface {v12, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_6

    move/from16 v19, v20

    goto :goto_4

    :cond_6
    add-int/lit8 v22, v20, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v6, v17, v19

    sub-int v7, v21, v19

    add-int v8, v23, v25

    sub-int v9, v27, v25

    add-int v3, v15, v19

    add-int v10, v3, v25

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move/from16 v27, v25

    move/from16 v21, v19

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v29, v14

    goto :goto_2

    :cond_9
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    sub-int v3, v24, v23

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void

    :cond_b
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    sub-int v3, v18, v17

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method
