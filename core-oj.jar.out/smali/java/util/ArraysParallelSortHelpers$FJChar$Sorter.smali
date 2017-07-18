.class final Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
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
.field final a:[C

.field final base:I

.field final gran:I

.field final size:I

.field final w:[C

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[C[CIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 28

    move-object/from16 v2, p0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    :goto_0
    move/from16 v0, v22

    if-le v0, v10, :cond_0

    ushr-int/lit8 v6, v22, 0x1

    ushr-int/lit8 v16, v6, 0x1

    add-int v27, v6, v16

    new-instance v12, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    add-int v7, v5, v6

    sub-int v8, v22, v6

    invoke-direct/range {v1 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    invoke-direct {v12, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v26, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    add-int v15, v9, v6

    add-int v17, v9, v27

    sub-int v18, v22, v27

    add-int v19, v5, v6

    move-object v13, v4

    move-object v14, v3

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    add-int v21, v9, v27

    sub-int v22, v22, v27

    add-int v23, v5, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    add-int v21, v9, v6

    add-int v23, v5, v6

    move-object/from16 v18, v26

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v22, v16

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v25, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    add-int v17, v9, v16

    sub-int v18, v6, v16

    move-object v13, v4

    move-object v14, v3

    move v15, v9

    move/from16 v19, v5

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    add-int v21, v9, v16

    sub-int v22, v6, v16

    add-int v23, v5, v16

    move-object/from16 v18, v25

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move/from16 v22, v16

    goto/16 :goto_0

    :cond_0
    add-int v1, v9, v22

    add-int/lit8 v19, v1, -0x1

    move-object/from16 v17, v4

    move/from16 v18, v9

    move-object/from16 v20, v3

    move/from16 v21, v5

    invoke-static/range {v17 .. v22}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method
