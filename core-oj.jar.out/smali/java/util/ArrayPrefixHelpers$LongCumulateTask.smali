.class final Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongCumulateTask"
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
.field private static final serialVersionUID:J = -0x466ad3045ec06db1L


# instance fields
.field final array:[J

.field final fence:I

.field final function:Ljava/util/function/LongBinaryOperator;

.field final hi:I

.field in:J

.field left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final lo:I

.field final origin:I

.field out:J

.field right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V
    .locals 4

    const/16 v1, 0x10

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    iput p6, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    iput p7, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 38

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    if-nez v7, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    move-object/from16 v5, p0

    :cond_2
    :goto_0
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    move/from16 v20, v0

    if-ltz v20, :cond_7

    iget v12, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    array-length v14, v7

    if-gt v12, v14, :cond_7

    sub-int v14, v12, v20

    if-le v14, v10, :cond_c

    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    if-nez v13, :cond_4

    add-int v14, v20, v12

    ushr-int/lit8 v11, v14, 0x1

    new-instance v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v24, v4

    new-instance v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v5, v13

    :cond_3
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_4
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    const/4 v5, 0x0

    const/16 v24, 0x0

    if-eqz v4, :cond_6

    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_8

    :goto_1
    move-wide/from16 v0, v28

    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_9

    :cond_6
    :goto_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_a

    :goto_3
    if-nez v5, :cond_3

    :cond_7
    :goto_4
    return-void

    :cond_8
    move-wide/from16 v0, v32

    move-wide/from16 v2, v28

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_1

    :cond_9
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v5, v4

    goto :goto_2

    :cond_a
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v5, :cond_b

    move-object/from16 v24, v5

    :cond_b
    move-object v5, v13

    goto :goto_3

    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    and-int/lit8 v14, v22, 0x4

    if-nez v14, :cond_7

    and-int/lit8 v14, v22, 0x1

    if-eqz v14, :cond_d

    const/16 v34, 0x4

    :goto_5
    or-int v14, v22, v34

    move/from16 v0, v22

    invoke-virtual {v5, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x2

    move/from16 v0, v34

    if-eq v0, v14, :cond_10

    move/from16 v0, v20

    if-ne v0, v8, :cond_f

    aget-wide v36, v7, v8

    add-int/lit8 v25, v8, 0x1

    :goto_6
    move/from16 v26, v25

    :goto_7
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    aput-wide v36, v7, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v20

    if-le v0, v8, :cond_e

    const/16 v34, 0x2

    goto :goto_5

    :cond_e
    const/16 v34, 0x6

    goto :goto_5

    :cond_f
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    move/from16 v25, v20

    goto :goto_6

    :cond_10
    if-ge v12, v9, :cond_11

    aget-wide v36, v7, v20

    add-int/lit8 v26, v20, 0x1

    :goto_8
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_11
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    :cond_12
    move-wide/from16 v0, v36

    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    :cond_13
    :goto_9
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    if-nez v30, :cond_14

    and-int/lit8 v14, v34, 0x4

    if-eqz v14, :cond_7

    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_15

    move-object/from16 v5, v30

    goto :goto_9

    :cond_15
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_1a

    move-object/from16 v0, v30

    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    if-eqz v13, :cond_16

    move-object/from16 v0, v30

    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    if-eqz v4, :cond_16

    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    iget v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    if-ne v14, v9, :cond_18

    :goto_a
    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    :cond_16
    and-int/lit8 v14, v22, 0x1

    if-nez v14, :cond_19

    move-object/from16 v0, v30

    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    if-ne v14, v8, :cond_19

    const/16 v31, 0x1

    :goto_b
    or-int v14, v22, v34

    or-int v27, v14, v31

    move/from16 v0, v27

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_17
    const/16 v34, 0x2

    move-object/from16 v5, v30

    if-eqz v31, :cond_13

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    :cond_18
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v0, v28

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_a

    :cond_19
    const/16 v31, 0x0

    goto :goto_b

    :cond_1a
    or-int v14, v22, v34

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_13

    goto/16 :goto_4
.end method
