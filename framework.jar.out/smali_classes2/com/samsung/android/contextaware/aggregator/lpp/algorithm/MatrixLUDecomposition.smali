.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;
.super Ljava/lang/Object;
.source "MatrixLUDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LU:[[D

.field private m:I

.field private n:I

.field private piv:[I

.field private pivsign:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 18
    .param p1, "A"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    .line 58
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v9, v9, [I

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    .line 59
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v4, v9, v4

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 64
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v2, v9, [D

    .line 68
    .local v2, "LUcolj":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v5, v9, :cond_9

    .line 72
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_1

    .line 73
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v14, v9, v5

    aput-wide v14, v2, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 78
    :cond_1
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_3

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v9, v4

    .line 83
    .local v3, "LUrowi":[D
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 84
    .local v7, "kmax":I
    const-wide/16 v10, 0x0

    .line 85
    .local v10, "s":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_4
    if-ge v6, v7, :cond_2

    .line 86
    aget-wide v14, v3, v6

    aget-wide v16, v2, v6

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 89
    :cond_2
    aget-wide v14, v2, v4

    sub-double/2addr v14, v10

    aput-wide v14, v2, v4

    aput-wide v14, v3, v5

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 94
    .end local v3    # "LUrowi":[D
    .end local v6    # "k":I
    .end local v7    # "kmax":I
    .end local v10    # "s":D
    :cond_3
    move v8, v5

    .line 95
    .local v8, "p":I
    add-int/lit8 v4, v5, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_5

    .line 96
    aget-wide v14, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    aget-wide v16, v2, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v9, v14, v16

    if-lez v9, :cond_4

    .line 97
    move v8, v4

    .line 95
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 100
    :cond_5
    if-eq v8, v5, :cond_7

    .line 101
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v6, v9, :cond_6

    .line 102
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v8

    aget-wide v12, v9, v6

    .local v12, "t":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v14, v14, v5

    aget-wide v14, v14, v6

    aput-wide v14, v9, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v5

    aput-wide v12, v9, v6

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 104
    .end local v12    # "t":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v6, v9, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v14, v14, v5

    aput v14, v9, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v6, v9, v5

    .line 105
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    neg-int v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 110
    .end local v6    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v5, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v5

    aget-wide v14, v9, v5

    const-wide/16 v16, 0x0

    cmpl-double v9, v14, v16

    if-eqz v9, :cond_8

    .line 111
    add-int/lit8 v4, v5, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_8

    .line 112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v14, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aget-wide v16, v16, v5

    div-double v14, v14, v16

    aput-wide v14, v9, v5

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 68
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 51
    .end local v8    # "p":I
    :cond_9
    return-void
.end method


# virtual methods
.method public det()D
    .locals 6

    .prologue
    .line 263
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-eq v3, v4, :cond_0

    .line 264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Matrix must be square."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    int-to-double v0, v3

    .line 267
    .local v0, "d":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    mul-double/2addr v0, v4

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-wide v0
.end method

.method public getDoublePivot()[D
    .locals 4

    .prologue
    .line 250
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [D

    .line 251
    .local v1, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-object v1
.end method

.method public getL()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 198
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 199
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 200
    .local v0, "L":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v2, v4, :cond_3

    .line 201
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_2

    .line 202
    if-le v2, v3, :cond_0

    .line 203
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 201
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :cond_0
    if-ne v2, v3, :cond_1

    .line 205
    aget-object v4, v0, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 207
    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 200
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "j":I
    :cond_3
    return-object v1
.end method

.method public getPivot()[I
    .locals 3

    .prologue
    .line 238
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [I

    .line 239
    .local v1, "p":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-object v1
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 219
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 220
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 221
    .local v0, "U":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v4, :cond_2

    .line 222
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_1

    .line 223
    if-gt v2, v3, :cond_0

    .line 224
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 222
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 221
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public isNonsingular()Z
    .locals 6

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v1, v1, v0

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 188
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    const/4 v8, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-eq v6, v7, :cond_0

    .line 282
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Matrix row dimensions must agree."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->isNonsingular()Z

    move-result v6

    if-nez v6, :cond_1

    .line 285
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Matrix is singular."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 289
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v5

    .line 290
    .local v5, "nx":I
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v6, v8, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix([III)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    .line 291
    .local v1, "Xmat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 294
    .local v0, "X":[[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v6, :cond_4

    .line 295
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_1
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v6, :cond_3

    .line 296
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 297
    aget-object v6, v0, v2

    aget-wide v8, v6, v3

    aget-object v7, v0, v4

    aget-wide v10, v7, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 295
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "i":I
    :cond_4
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    add-int/lit8 v4, v6, -0x1

    :goto_3
    if-ltz v4, :cond_8

    .line 303
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v5, :cond_5

    .line 304
    aget-object v6, v0, v4

    aget-wide v8, v6, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v4

    aget-wide v10, v7, v4

    div-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 306
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, v4, :cond_7

    .line 307
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_6

    .line 308
    aget-object v6, v0, v2

    aget-wide v8, v6, v3

    aget-object v7, v0, v4

    aget-wide v10, v7, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 306
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 302
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 312
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    return-object v1
.end method
