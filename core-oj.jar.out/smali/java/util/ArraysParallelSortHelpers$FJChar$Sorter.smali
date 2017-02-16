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
    .param p2, "a"    # [C
    .param p3, "w"    # [C
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[C[CIIII)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 353
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    .line 354
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    .line 351
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 28

    .prologue
    .line 357
    move-object/from16 v2, p0

    .line 358
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->a:[C

    .local v4, "a":[C
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->w:[C

    .line 359
    .local v3, "w":[C
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->base:I

    .local v9, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->size:I

    move/from16 v22, v0

    .local v22, "n":I
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->wbase:I

    .local v5, "wb":I
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->gran:I

    .line 360
    .local v10, "g":I
    :goto_0
    move/from16 v0, v22

    if-le v0, v10, :cond_0

    .line 361
    ushr-int/lit8 v6, v22, 0x1

    .local v6, "h":I
    ushr-int/lit8 v16, v6, 0x1

    .local v16, "q":I
    add-int v27, v6, v16

    .line 362
    .local v27, "u":I
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    .line 363
    add-int v7, v5, v6

    sub-int v8, v22, v6

    .line 362
    invoke-direct/range {v1 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    invoke-direct {v12, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 364
    .local v12, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v26, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    add-int v15, v9, v6

    .line 365
    add-int v17, v9, v27

    sub-int v18, v22, v27

    add-int v19, v5, v6

    move-object v13, v4

    move-object v14, v3

    move/from16 v20, v10

    .line 364
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 366
    .local v26, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    add-int v21, v9, v27

    sub-int v22, v22, v27

    add-int v23, v5, v27

    move-object/from16 v18, v26

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    .end local v22    # "n":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 367
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

    .line 368
    new-instance v25, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

    .line 369
    add-int v17, v9, v16

    sub-int v18, v6, v16

    move-object v13, v4

    move-object v14, v3

    move v15, v9

    move/from16 v19, v5

    move/from16 v20, v10

    .line 368
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 370
    .local v25, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
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

    .line 371
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 372
    .restart local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v22, v16

    .restart local v22    # "n":I
    goto/16 :goto_0

    .line 374
    .end local v6    # "h":I
    .end local v12    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "q":I
    .end local v25    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v26    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v27    # "u":I
    :cond_0
    add-int v1, v9, v22

    add-int/lit8 v19, v1, -0x1

    move-object/from16 v17, v4

    move/from16 v18, v9

    move-object/from16 v20, v3

    move/from16 v21, v5

    invoke-static/range {v17 .. v22}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 375
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 356
    return-void
.end method
