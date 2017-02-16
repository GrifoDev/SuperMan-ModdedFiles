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
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

    .line 239
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 240
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .line 241
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .line 244
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_0

    move v0, v1

    .line 243
    .end local v0    # "p":I
    :cond_0
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .line 238
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V
    .locals 0
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
    .line 252
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 253
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .line 254
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 255
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .line 256
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .line 251
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 38

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    .local v6, "fn":Ljava/util/function/LongBinaryOperator;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .local v7, "a":[J
    if-nez v7, :cond_1

    .line 263
    .end local v7    # "a":[J
    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 264
    .restart local v7    # "a":[J
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .local v10, "th":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    .local v8, "org":I
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 265
    .local v9, "fnc":I
    move-object/from16 v5, p0

    .line 266
    :cond_2
    :goto_0
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    move/from16 v20, v0

    .local v20, "l":I
    if-ltz v20, :cond_7

    iget v12, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .local v12, "h":I
    array-length v14, v7

    if-gt v12, v14, :cond_7

    .line 267
    sub-int v14, v12, v20

    if-le v14, v10, :cond_c

    .line 268
    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v13, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 269
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v13, :cond_4

    .line 270
    add-int v14, v20, v12

    ushr-int/lit8 v11, v14, 0x1

    .line 272
    .local v11, "mid":I
    new-instance v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    .line 271
    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object/from16 v24, v4

    .line 274
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    new-instance v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    .line 273
    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v5, v13

    .line 306
    .end local v11    # "mid":I
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_3
    if-eqz v24, :cond_2

    .line 307
    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 277
    :cond_4
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v32, v0

    .line 278
    .local v32, "pin":J
    move-wide/from16 v0, v32

    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 279
    const/4 v5, 0x0

    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    const/16 v24, 0x0

    .line 280
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_6

    .line 281
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    .line 282
    .local v28, "lout":J
    move/from16 v0, v20

    if-ne v0, v8, :cond_8

    .end local v28    # "lout":J
    :goto_1
    move-wide/from16 v0, v28

    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 285
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    .local v23, "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_9

    .line 294
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    :cond_6
    :goto_2
    invoke-virtual {v13}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v23

    .restart local v23    # "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_a

    .line 303
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_3
    if-nez v5, :cond_3

    .line 259
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v12    # "h":I
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_7
    :goto_4
    return-void

    .line 283
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v12    # "h":I
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    .restart local v32    # "pin":J
    :cond_8
    move-wide/from16 v0, v32

    move-wide/from16 v2, v28

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_1

    .line 287
    .end local v28    # "lout":J
    .restart local v23    # "c":I
    :cond_9
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 288
    move-object v5, v4

    .line 289
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_2

    .line 296
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_a
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 297
    if-eqz v5, :cond_b

    .line 298
    move-object/from16 v24, v5

    .line 299
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_b
    move-object v5, v13

    .line 300
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_3

    .line 312
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_c
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .local v22, "b":I
    and-int/lit8 v14, v22, 0x4

    if-nez v14, :cond_7

    .line 314
    and-int/lit8 v14, v22, 0x1

    if-eqz v14, :cond_d

    const/16 v34, 0x4

    .line 316
    .local v34, "state":I
    :goto_5
    or-int v14, v22, v34

    move/from16 v0, v22

    invoke-virtual {v5, v0, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 321
    const/4 v14, 0x2

    move/from16 v0, v34

    if-eq v0, v14, :cond_10

    .line 323
    move/from16 v0, v20

    if-ne v0, v8, :cond_f

    .line 324
    aget-wide v36, v7, v8

    .line 325
    .local v36, "sum":J
    add-int/lit8 v25, v8, 0x1

    .line 331
    .local v25, "first":I
    :goto_6
    move/from16 v26, v25

    .local v26, "i":I
    :goto_7
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    .line 332
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    aput-wide v36, v7, v26

    .line 331
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 315
    .end local v25    # "first":I
    .end local v26    # "i":I
    .end local v34    # "state":I
    .end local v36    # "sum":J
    :cond_d
    move/from16 v0, v20

    if-le v0, v8, :cond_e

    const/16 v34, 0x2

    goto :goto_5

    :cond_e
    const/16 v34, 0x6

    goto :goto_5

    .line 328
    .restart local v34    # "state":I
    :cond_f
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    .line 329
    .restart local v36    # "sum":J
    move/from16 v25, v20

    .restart local v25    # "first":I
    goto :goto_6

    .line 334
    .end local v25    # "first":I
    .end local v36    # "sum":J
    :cond_10
    if-ge v12, v9, :cond_11

    .line 335
    aget-wide v36, v7, v20

    .line 336
    .restart local v36    # "sum":J
    add-int/lit8 v26, v20, 0x1

    .restart local v26    # "i":I
    :goto_8
    move/from16 v0, v26

    if-ge v0, v12, :cond_12

    .line 337
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    .line 336
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 340
    .end local v26    # "i":I
    .end local v36    # "sum":J
    :cond_11
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    .line 341
    .restart local v36    # "sum":J
    :cond_12
    move-wide/from16 v0, v36

    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 343
    :cond_13
    :goto_9
    invoke-virtual {v5}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v30, "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v30, :cond_14

    .line 344
    and-int/lit8 v14, v34, 0x4

    if-eqz v14, :cond_7

    .line 345
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->quietlyComplete()V

    goto/16 :goto_4

    .line 348
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v22

    .line 349
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_15

    .line 350
    move-object/from16 v5, v30

    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_9

    .line 351
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_15
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_1a

    .line 353
    move-object/from16 v0, v30

    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v13, :cond_16

    .line 354
    move-object/from16 v0, v30

    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_16

    .line 355
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    .line 356
    .restart local v28    # "lout":J
    iget v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    if-ne v14, v9, :cond_18

    .end local v28    # "lout":J
    :goto_a
    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 359
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_16
    and-int/lit8 v14, v22, 0x1

    if-nez v14, :cond_19

    .line 360
    move-object/from16 v0, v30

    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    if-ne v14, v8, :cond_19

    const/16 v31, 0x1

    .line 361
    .local v31, "refork":I
    :goto_b
    or-int v14, v22, v34

    or-int v27, v14, v31

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 362
    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    .line 361
    if-eqz v14, :cond_13

    .line 363
    :cond_17
    const/16 v34, 0x2

    .line 364
    move-object/from16 v5, v30

    .line 365
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v31, :cond_13

    .line 366
    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_9

    .line 357
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    :cond_18
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v0, v28

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_a

    .line 360
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v28    # "lout":J
    :cond_19
    const/16 v31, 0x0

    goto :goto_b

    .line 369
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_1a
    or-int v14, v22, v34

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/concurrent/CountedCompleter;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_13

    goto/16 :goto_4
.end method
