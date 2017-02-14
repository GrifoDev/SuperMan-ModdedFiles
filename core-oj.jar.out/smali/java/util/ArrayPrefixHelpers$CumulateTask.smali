.class final Ljava/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
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
.field private static final serialVersionUID:J = 0x49767bc622e29967L


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final fence:I

.field final function:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final hi:I

.field in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field left:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final lo:I

.field final origin:I

.field out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field right:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;II)V"
        }
    .end annotation

    const/16 v1, 0x10

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p6, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    iput p7, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    if-nez v6, :cond_1

    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    move-object/from16 v4, p0

    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move/from16 v19, v0

    if-ltz v19, :cond_7

    iget v11, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    array-length v13, v6

    if-gt v11, v13, :cond_7

    sub-int v13, v11, v19

    if-le v13, v9, :cond_c

    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    if-nez v12, :cond_4

    add-int v13, v19, v11

    ushr-int/lit8 v10, v13, 0x1

    new-instance v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v23, v3

    new-instance v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v4, v12

    :cond_3
    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_4
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iput-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v23, 0x0

    if-eqz v3, :cond_6

    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v26, v0

    move/from16 v0, v19

    if-ne v0, v7, :cond_8

    :goto_1
    move-object/from16 v0, v26

    iput-object v0, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

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
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

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

    const/16 v32, 0x4

    :goto_5
    or-int v13, v21, v32

    move/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x2

    move/from16 v0, v32

    if-eq v0, v13, :cond_10

    move/from16 v0, v19

    if-ne v0, v7, :cond_f

    aget-object v33, v6, v7

    add-int/lit8 v24, v7, 0x1

    :goto_6
    move/from16 v25, v24

    :goto_7
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    aget-object v13, v6, v25

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    aput-object v33, v6, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    const/16 v32, 0x2

    goto :goto_5

    :cond_e
    const/16 v32, 0x6

    goto :goto_5

    :cond_f
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v33, v0

    move/from16 v24, v19

    goto :goto_6

    :cond_10
    if-ge v11, v8, :cond_11

    aget-object v33, v6, v19

    add-int/lit8 v25, v19, 0x1

    :goto_8
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    aget-object v13, v6, v25

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v33, v0

    :cond_12
    move-object/from16 v0, v33

    iput-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v28, v29

    if-nez v29, :cond_14

    and-int/lit8 v13, v32, 0x4

    if-eqz v13, :cond_7

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    and-int v13, v21, v32

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_15

    move-object/from16 v4, v29

    goto :goto_9

    :cond_15
    and-int v13, v21, v32

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1a

    move-object/from16 v0, v29

    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v12, :cond_16

    move-object/from16 v0, v29

    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    if-eqz v3, :cond_16

    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v26, v0

    iget v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v13, v8, :cond_18

    :goto_a
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    iput-object v0, v1, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    :cond_16
    and-int/lit8 v13, v21, 0x1

    if-nez v13, :cond_19

    move-object/from16 v0, v29

    iget v13, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v13, v7, :cond_19

    const/16 v31, 0x1

    :goto_b
    or-int v13, v21, v32

    or-int v27, v13, v31

    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_17
    const/16 v32, 0x2

    move-object/from16 v4, v29

    if-eqz v31, :cond_13

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    :cond_18
    iget-object v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v0, v26

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    goto :goto_a

    :cond_19
    const/16 v31, 0x0

    goto :goto_b

    :cond_1a
    or-int v13, v21, v32

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_4
.end method
