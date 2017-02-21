.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;
.super Ljava/lang/Object;
.source "MatrixQRDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private QR:[[D

.field private Rdiag:[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 14

    const-wide/16 v12, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    new-array v3, v3, [D

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v3, :cond_6

    const-wide/16 v4, 0x0

    move v0, v2

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    invoke-static {v4, v5, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v3, v4, v12

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    cmpg-double v3, v8, v12

    if-gez v3, :cond_1

    neg-double v4, v4

    :cond_1
    move v0, v2

    :goto_2
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    div-double/2addr v8, v4

    aput-wide v8, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    aput-wide v8, v3, v2

    add-int/lit8 v1, v2, 0x1

    :goto_3
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v3, :cond_5

    const-wide/16 v6, 0x0

    move v0, v2

    :goto_4
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v10, v3, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    neg-double v8, v6

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v10, v3, v2

    div-double v6, v8, v10

    move v0, v2

    :goto_5
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v1

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    neg-double v8, v4

    aput-wide v8, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_1

    if-lt v2, v3, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getQ()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    const-wide/16 v12, 0x0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v5, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-ltz v4, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_0

    aget-object v5, v0, v2

    aput-wide v12, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aget-object v5, v0, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v5, v4

    move v3, v4

    :goto_2
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v4

    aget-wide v8, v5, v4

    cmpl-double v5, v8, v12

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x0

    move v2, v4

    :goto_3
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v4

    aget-object v5, v0, v2

    aget-wide v10, v5, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    neg-double v8, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v4

    aget-wide v10, v5, v4

    div-double v6, v8, v10

    move v2, v4

    :goto_4
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_2

    aget-object v5, v0, v2

    aget-wide v8, v5, v3

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getR()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_2

    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v6, v5, v2

    aput-wide v6, v4, v3

    goto :goto_2

    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public isFullRank()Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v5

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-eq v5, v8, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Matrix row dimensions must agree."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->isFullRank()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Matrix is rank deficient."

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v5, :cond_5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    const-wide/16 v6, 0x0

    move v1, v3

    :goto_2
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v1

    aget-wide v8, v5, v3

    aget-object v5, v0, v1

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    neg-double v8, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v3

    aget-wide v10, v5, v3

    div-double v6, v8, v10

    move v1, v3

    :goto_3
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v5, :cond_3

    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v3, v5, -0x1

    :goto_4
    if-ltz v3, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v5, v0, v3

    aget-wide v8, v5, v2

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v10, v10, v3

    div-double/2addr v8, v10

    aput-wide v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_8

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_7

    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    aget-object v10, v0, v3

    aget-wide v10, v10, v2

    iget-object v12, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v12, v12, v1

    aget-wide v12, v12, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v5, v0, v8, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v8, v11, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix(IIII)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    return-object v5
.end method
