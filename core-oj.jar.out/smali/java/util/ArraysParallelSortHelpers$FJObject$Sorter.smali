.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
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

.field final base:I

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final gran:I

.field final size:I

.field final w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[TT;[TT;IIII",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    iput-object p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 30

    move-object/from16 v2, p0

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->comparator:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->a:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->w:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->base:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->size:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->wbase:I

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->gran:I

    :goto_0
    move/from16 v0, v24

    if-le v0, v10, :cond_0

    ushr-int/lit8 v6, v24, 0x1

    ushr-int/lit8 v17, v6, 0x1

    add-int v29, v6, v17

    new-instance v13, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v7, v5, v6

    sub-int v8, v24, v6

    invoke-direct/range {v1 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    invoke-direct {v13, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v28, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v12, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v16, v9, v6

    add-int v18, v9, v29

    sub-int v19, v24, v29

    add-int v20, v5, v6

    move-object v14, v4

    move-object v15, v3

    move/from16 v21, v10

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v22, v9, v29

    sub-int v23, v24, v29

    add-int v24, v5, v29

    move-object/from16 v19, v28

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move/from16 v25, v10

    move-object/from16 v26, v11

    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v22, v9, v6

    add-int v24, v5, v6

    move-object/from16 v19, v28

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move/from16 v23, v17

    move/from16 v25, v10

    move-object/from16 v26, v11

    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v27, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v12, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v18, v9, v17

    sub-int v19, v6, v17

    move-object v14, v4

    move-object v15, v3

    move/from16 v16, v9

    move/from16 v20, v5

    move/from16 v21, v10

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    move-object/from16 v0, v27

    invoke-direct {v0, v12}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    add-int v22, v9, v17

    sub-int v23, v6, v17

    add-int v24, v5, v17

    move-object/from16 v19, v27

    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move/from16 v25, v10

    move-object/from16 v26, v11

    invoke-direct/range {v18 .. v26}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move/from16 v24, v17

    goto/16 :goto_0

    :cond_0
    add-int v20, v9, v24

    move-object/from16 v18, v4

    move/from16 v19, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v3

    move/from16 v23, v5

    invoke-static/range {v18 .. v24}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method
