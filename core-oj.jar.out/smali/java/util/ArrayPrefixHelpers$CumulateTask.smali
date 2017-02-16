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
    .param p4, "lo"    # I
    .param p5, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;II)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v1, 0x10

    .line 87
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 88
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 89
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 92
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 91
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .locals 0
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask",
            "<TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;[TT;IIIII)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 101
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 102
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 103
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 104
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 99
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 34

    .prologue
    .line 110
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    .local v5, "fn":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .local v6, "a":[Ljava/lang/Object;, "[TT;"
    if-nez v6, :cond_1

    .line 111
    .end local v6    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 112
    .restart local v6    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .local v9, "th":I
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    .local v7, "org":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 113
    .local v8, "fnc":I
    move-object/from16 v4, p0

    .line 114
    :cond_2
    :goto_0
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move/from16 v19, v0

    .local v19, "l":I
    if-ltz v19, :cond_7

    iget v11, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .local v11, "h":I
    array-length v13, v6

    if-gt v11, v13, :cond_7

    .line 115
    sub-int v13, v11, v19

    if-le v13, v9, :cond_c

    .line 116
    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 117
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v12, :cond_4

    .line 118
    add-int v13, v19, v11

    ushr-int/lit8 v10, v13, 0x1

    .line 120
    .local v10, "mid":I
    new-instance v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    .line 119
    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v23, v3

    .line 122
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    .line 121
    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v4, v12

    .line 154
    .end local v10    # "mid":I
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_3
    if-eqz v23, :cond_2

    .line 155
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v30, v0

    .line 126
    .local v30, "pin":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, v30

    iput-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 127
    const/4 v4, 0x0

    .local v4, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    const/16 v23, 0x0

    .line 128
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_6

    .line 129
    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 130
    .local v26, "lout":Ljava/lang/Object;, "TT;"
    move/from16 v0, v19

    if-ne v0, v7, :cond_8

    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :goto_1
    move-object/from16 v0, v26

    iput-object v0, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 133
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .local v22, "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_9

    .line 142
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .restart local v22    # "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_a

    .line 151
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_3
    if-nez v4, :cond_3

    .line 107
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v11    # "h":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    .end local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_7
    :goto_4
    return-void

    .line 131
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v11    # "h":I
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    .restart local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    goto :goto_1

    .line 135
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    .restart local v22    # "c":I
    :cond_9
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 136
    move-object v4, v3

    .line 137
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_2

    .line 144
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_a
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 145
    if-eqz v4, :cond_b

    .line 146
    move-object/from16 v23, v4

    .line 147
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_b
    move-object v4, v12

    .line 148
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_3

    .line 160
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v22    # "c":I
    .end local v30    # "pin":Ljava/lang/Object;, "TT;"
    :cond_c
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    .local v21, "b":I
    and-int/lit8 v13, v21, 0x4

    if-nez v13, :cond_7

    .line 162
    and-int/lit8 v13, v21, 0x1

    if-eqz v13, :cond_d

    const/16 v32, 0x4

    .line 164
    .local v32, "state":I
    :goto_5
    or-int v13, v21, v32

    move/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 169
    const/4 v13, 0x2

    move/from16 v0, v32

    if-eq v0, v13, :cond_10

    .line 171
    move/from16 v0, v19

    if-ne v0, v7, :cond_f

    .line 172
    aget-object v33, v6, v7

    .line 173
    .local v33, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v24, v7, 0x1

    .line 179
    .local v24, "first":I
    :goto_6
    move/from16 v25, v24

    .local v25, "i":I
    :goto_7
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    .line 180
    aget-object v13, v6, v25

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    aput-object v33, v6, v25

    .line 179
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 163
    .end local v24    # "first":I
    .end local v25    # "i":I
    .end local v32    # "state":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_d
    move/from16 v0, v19

    if-le v0, v7, :cond_e

    const/16 v32, 0x2

    goto :goto_5

    :cond_e
    const/16 v32, 0x6

    goto :goto_5

    .line 176
    .restart local v32    # "state":I
    :cond_f
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 177
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    move/from16 v24, v19

    .restart local v24    # "first":I
    goto :goto_6

    .line 182
    .end local v24    # "first":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_10
    if-ge v11, v8, :cond_11

    .line 183
    aget-object v33, v6, v19

    .line 184
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v25, v19, 0x1

    .restart local v25    # "i":I
    :goto_8
    move/from16 v0, v25

    if-ge v0, v11, :cond_12

    .line 185
    aget-object v13, v6, v25

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .line 184
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 188
    .end local v25    # "i":I
    .end local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_11
    iget-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object/from16 v33, v0

    .line 189
    .restart local v33    # "sum":Ljava/lang/Object;, "TT;"
    :cond_12
    move-object/from16 v0, v33

    iput-object v0, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 192
    :cond_13
    :goto_9
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 193
    .local v29, "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v28, v29

    .local v28, "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v29, :cond_14

    .line 194
    and-int/lit8 v13, v32, 0x4

    if-eqz v13, :cond_7

    .line 195
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    .line 198
    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v21

    .line 199
    and-int v13, v21, v32

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_15

    .line 200
    move-object/from16 v4, v29

    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_9

    .line 201
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_15
    and-int v13, v21, v32

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1a

    .line 203
    move-object/from16 v0, v29

    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v12, :cond_16

    .line 204
    move-object/from16 v0, v29

    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_16

    .line 205
    iget-object v0, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 206
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v13, v8, :cond_18

    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :goto_a
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    iput-object v0, v1, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 209
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_16
    and-int/lit8 v13, v21, 0x1

    if-nez v13, :cond_19

    .line 210
    move-object/from16 v0, v29

    iget v13, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v13, v7, :cond_19

    const/16 v31, 0x1

    .line 211
    .local v31, "refork":I
    :goto_b
    or-int v13, v21, v32

    or-int v27, v13, v31

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 212
    move-object/from16 v0, v29

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    .line 211
    if-eqz v13, :cond_13

    .line 213
    :cond_17
    const/16 v32, 0x2

    .line 214
    move-object/from16 v4, v29

    .line 215
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v31, :cond_13

    .line 216
    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    .line 207
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v26    # "lout":Ljava/lang/Object;, "TT;"
    :cond_18
    iget-object v13, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object/from16 v0, v26

    invoke-interface {v5, v0, v13}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    goto :goto_a

    .line 210
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v26    # "lout":Ljava/lang/Object;, "TT;"
    :cond_19
    const/16 v31, 0x0

    goto :goto_b

    .line 219
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_1a
    or-int v13, v21, v32

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_13

    goto/16 :goto_4
.end method
