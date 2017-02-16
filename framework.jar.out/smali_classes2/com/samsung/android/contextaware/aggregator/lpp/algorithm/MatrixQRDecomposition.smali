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
    .param p1, "A"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    const-wide/16 v12, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    .line 55
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    new-array v3, v3, [D

    iput-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    .line 58
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v3, :cond_6

    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .local v4, "nrm":D
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    invoke-static {v4, v5, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_0
    cmpl-double v3, v4, v12

    if-eqz v3, :cond_5

    .line 67
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    cmpg-double v3, v8, v12

    if-gez v3, :cond_1

    .line 68
    neg-double v4, v4

    .line 70
    :cond_1
    move v0, v2

    :goto_2
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    div-double/2addr v8, v4

    aput-wide v8, v3, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    aput-wide v8, v3, v2

    .line 76
    add-int/lit8 v1, v2, 0x1

    .local v1, "j":I
    :goto_3
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v3, :cond_5

    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .local v6, "s":D
    move v0, v2

    :goto_4
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v10, v3, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 81
    :cond_3
    neg-double v8, v6

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v2

    aget-wide v10, v3, v2

    div-double v6, v8, v10

    .line 82
    move v0, v2

    :goto_5
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v0, v3, :cond_4

    .line 83
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v3, v3, v0

    aget-wide v8, v3, v1

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v0

    aget-wide v10, v10, v2

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v3, v1

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    .end local v1    # "j":I
    .end local v6    # "s":D
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    neg-double v8, v4

    aput-wide v8, v3, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 50
    .end local v0    # "i":I
    .end local v4    # "nrm":D
    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 112
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 113
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 114
    .local v0, "H":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v4, :cond_2

    .line 115
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_1

    .line 116
    if-lt v2, v3, :cond_0

    .line 117
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 115
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_0
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "j":I
    :cond_2
    return-object v1
.end method

.method public getQ()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 152
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v5, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 153
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 154
    .local v0, "Q":[[D
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v4, v5, -0x1

    .local v4, "k":I
    :goto_0
    if-ltz v4, :cond_4

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_0

    .line 156
    aget-object v5, v0, v2

    aput-wide v12, v5, v4

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_0
    aget-object v5, v0, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v5, v4

    .line 159
    move v3, v4

    .local v3, "j":I
    :goto_2
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v5, :cond_3

    .line 160
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v4

    aget-wide v8, v5, v4

    cmpl-double v5, v8, v12

    if-eqz v5, :cond_2

    .line 161
    const-wide/16 v6, 0x0

    .line 162
    .local v6, "s":D
    move v2, v4

    :goto_3
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v8, v5, v4

    aget-object v5, v0, v2

    aget-wide v10, v5, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 165
    :cond_1
    neg-double v8, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v4

    aget-wide v10, v5, v4

    div-double v6, v8, v10

    .line 166
    move v2, v4

    :goto_4
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v2, v5, :cond_2

    .line 167
    aget-object v5, v0, v2

    aget-wide v8, v5, v3

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v2

    aget-wide v10, v10, v4

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v3

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 159
    .end local v6    # "s":D
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_4
    return-object v1
.end method

.method public getR()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 131
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 132
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 133
    .local v0, "R":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v2, v4, :cond_3

    .line 134
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_2

    .line 135
    if-ge v2, v3, :cond_0

    .line 136
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 134
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    :cond_0
    if-ne v2, v3, :cond_1

    .line 138
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v6, v5, v2

    aput-wide v6, v4, v3

    goto :goto_2

    .line 140
    :cond_1
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 133
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "j":I
    :cond_3
    return-object v1
.end method

.method public isFullRank()Z
    .locals 6

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v5

    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-eq v5, v8, :cond_0

    .line 184
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Matrix row dimensions must agree."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->isFullRank()Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Matrix is rank deficient."

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    .line 192
    .local v4, "nx":I
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    .line 195
    .local v0, "X":[[D
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v5, :cond_5

    .line 196
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 197
    const-wide/16 v6, 0x0

    .line 198
    .local v6, "s":D
    move v1, v3

    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v5, :cond_2

    .line 199
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v1

    aget-wide v8, v5, v3

    aget-object v5, v0, v1

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    :cond_2
    neg-double v8, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v3

    aget-wide v10, v5, v3

    div-double v6, v8, v10

    .line 202
    move v1, v3

    :goto_3
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v5, :cond_3

    .line 203
    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v10, v10, v1

    aget-wide v10, v10, v3

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    aput-wide v8, v5, v2

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 196
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "i":I
    .end local v6    # "s":D
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "j":I
    :cond_5
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v3, v5, -0x1

    :goto_4
    if-ltz v3, :cond_9

    .line 209
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_5
    if-ge v2, v4, :cond_6

    .line 210
    aget-object v5, v0, v3

    aget-wide v8, v5, v2

    iget-object v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v10, v10, v3

    div-double/2addr v8, v10

    aput-wide v8, v5, v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 212
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v3, :cond_8

    .line 213
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_7

    .line 214
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

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 212
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 218
    .end local v1    # "i":I
    .end local v2    # "j":I
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
