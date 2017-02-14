.class final Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntCumulateTask"
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
.field private static final serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final array:[I

.field final fence:I

.field final function:Ljava/util/function/IntBinaryOperator;

.field final hi:I

.field in:I

.field left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final lo:I

.field final origin:I

.field out:I

.field right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .locals 4

    const/16 v1, 0x10

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p6, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    iput p7, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    if-nez v6, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    move-object/from16 v4, p0

    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move/from16 v19, v0

    if-ltz v19, :cond_7

    iget v11, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    array-length v13, v6

    if-gt v11, v13, :cond_7

    sub-int v13, v11, v19

    if-le v13, v9, :cond_c

    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    if-nez v12, :cond_4

    add-int v13, v19, v11

    ushr-int/lit8 v10, v13, 0x1

    new-instance v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v23, v3

    new-instance v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v4, v12

    :cond_3
    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_4
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v29, v0

    move/from16 v0, v29

    iput v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    const/4 v4, 0x0

    const/16 v23, 0x0

    if-eqz v3, :cond_6

    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    move/from16 v0, v19

    if-ne v0, v7, :cond_8

    :goto_1
    move/from16 v0, v26

    iput v0, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_9

    :cond_6
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_a

    :goto_3
    if-nez v4, :cond_3

    :cond_7
    :goto_4
    return-void

    :cond_8
    move/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_1

    :cond_9
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v4, v3

    goto :goto_2

    :cond_a
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_6

    if-eqz v4, :cond_b

    move-object/from16 v23, v4

    :cond_b
    move-object v4, v12

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    and-int/lit8 v13, v21, 0x4

    if-nez v13, :cond_7

    and-int/lit8 v13, v21, 0x1

    if-eqz v13, :cond_d

    const/16 v31, 0x4

    :goto_5
    or-int v13, v21, v31

    move/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x2

    move/from16 v0, v31

    if-eq v0, v13, :cond_10

    move/from16 v0, v19

    if-ne v0, v7, :cond_f

    aget v32, v6, v7

    add-int/lit8 v24, v7, 0x1

    :goto_6
    move/from16 v25, v24

    :goto_7
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    aput v32, v6, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    const/16 v31, 0x2

    goto :goto_5

    :cond_e
    const/16 v31, 0x6

    goto :goto_5

    :cond_f
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    move/from16 v24, v19

    goto :goto_6

    :cond_10
    if-ge v11, v8, :cond_11

    aget v32, v6, v19

    add-int/lit8 v25, v19, 0x1

    :goto_8
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    :cond_11
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    :cond_12
    move/from16 v0, v32

    iput v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    if-nez v28, :cond_14

    and-int/lit8 v13, v31, 0x4

    if-eqz v13, :cond_7

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_15

    move-object/from16 v4, v28

    goto :goto_9

    :cond_15
    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1a

    move-object/from16 v0, v28

    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    if-eqz v12, :cond_16

    move-object/from16 v0, v28

    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    if-eqz v3, :cond_16

    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v13, v8, :cond_18

    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    :cond_16
    and-int/lit8 v13, v21, 0x1

    if-nez v13, :cond_19

    move-object/from16 v0, v28

    iget v13, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v13, v7, :cond_19

    const/16 v30, 0x1

    :goto_b
    or-int v13, v21, v31

    or-int v27, v13, v30

    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_17
    const/16 v31, 0x2

    move-object/from16 v4, v28

    if-eqz v30, :cond_13

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    :cond_18
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v0, v26

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_a

    :cond_19
    const/16 v30, 0x0

    goto :goto_b

    :cond_1a
    or-int v13, v21, v31

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_4
.end method
