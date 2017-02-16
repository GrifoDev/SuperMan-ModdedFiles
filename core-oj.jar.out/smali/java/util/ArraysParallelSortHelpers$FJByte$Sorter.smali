.class final Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJByte;
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
.field final a:[B

.field final base:I

.field final gran:I

.field final size:I

.field final w:[B

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V
    .locals 0
    .param p2, "a"    # [B
    .param p3, "w"    # [B
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[B[BIIII)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 242
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->a:[B

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->w:[B

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->size:I

    .line 243
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->gran:I

    .line 240
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 29

    .prologue
    .line 246
    move-object/from16 v2, p0

    .line 247
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->a:[B

    .local v4, "a":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->w:[B

    .line 248
    .local v3, "w":[B
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->base:I

    .local v9, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->size:I

    move/from16 v26, v0

    .local v26, "n":I
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->wbase:I

    .local v5, "wb":I
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->gran:I

    .line 249
    .local v10, "g":I
    :goto_0
    move/from16 v0, v26

    if-le v0, v10, :cond_0

    .line 250
    ushr-int/lit8 v6, v26, 0x1

    .local v6, "h":I
    ushr-int/lit8 v16, v6, 0x1

    .local v16, "q":I
    add-int v28, v6, v16

    .line 251
    .local v28, "u":I
    new-instance v12, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    .line 252
    add-int v7, v5, v6

    sub-int v8, v26, v6

    .line 251
    invoke-direct/range {v1 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    invoke-direct {v12, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 253
    .local v12, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v27, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    add-int v15, v9, v6

    .line 254
    add-int v17, v9, v28

    sub-int v18, v26, v28

    add-int v19, v5, v6

    move-object v13, v4

    move-object v14, v3

    move/from16 v20, v10

    .line 253
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    move-object/from16 v0, v27

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 255
    .local v27, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    add-int v21, v9, v28

    sub-int v22, v26, v28

    add-int v23, v5, v28

    move-object/from16 v18, v27

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 256
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    add-int v21, v9, v6

    add-int v23, v5, v6

    move-object/from16 v18, v27

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v22, v16

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 257
    new-instance v25, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;

    .line 258
    add-int v17, v9, v16

    sub-int v18, v6, v16

    move-object v13, v4

    move-object v14, v3

    move v15, v9

    move/from16 v19, v5

    move/from16 v20, v10

    .line 257
    invoke-direct/range {v11 .. v20}, Ljava/util/ArraysParallelSortHelpers$FJByte$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIIIII)V

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 259
    .local v25, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v17, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    add-int v21, v9, v16

    sub-int v22, v6, v16

    add-int v23, v5, v16

    move-object/from16 v18, v25

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move/from16 v24, v10

    invoke-direct/range {v17 .. v24}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 260
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 261
    .restart local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v26, v16

    goto/16 :goto_0

    .line 263
    .end local v6    # "h":I
    .end local v12    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "q":I
    .end local v25    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v27    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v28    # "u":I
    :cond_0
    add-int v1, v9, v26

    add-int/lit8 v1, v1, -0x1

    invoke-static {v4, v9, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 264
    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 245
    return-void
.end method
