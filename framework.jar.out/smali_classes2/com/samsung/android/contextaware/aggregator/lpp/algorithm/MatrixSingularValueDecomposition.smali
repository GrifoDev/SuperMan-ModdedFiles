.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
.super Ljava/lang/Object;
.source "MatrixSingularValueDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 58
    .param p1, "Arg"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v4

    .line 57
    .local v4, "A":[[D
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 66
    .local v30, "nu":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v52

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    .line 67
    sget-object v52, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v54, v0

    const/16 v55, 0x0

    aput v54, v53, v55

    const/16 v54, 0x1

    aput v30, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    .line 68
    sget-object v52, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v54, v0

    const/16 v55, 0x0

    aput v54, v53, v55

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v54, v0

    const/16 v55, 0x1

    aput v54, v53, v55

    invoke-static/range {v52 .. v53}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    .line 69
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v5, v0, [D

    .line 70
    .local v5, "e":[D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v51, v0

    .line 71
    .local v51, "work":[D
    const/16 v33, 0x1

    .line 72
    .local v33, "wantu":Z
    const/16 v50, 0x1

    .line 77
    .local v50, "wantv":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 78
    .local v28, "nct":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v52

    const/16 v53, 0x0

    move/from16 v0, v53

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 79
    .local v29, "nrt":I
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_14

    .line 80
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 86
    move/from16 v22, v25

    .local v22, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_0

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    aget-object v53, v4, v22

    aget-wide v56, v53, v25

    invoke-static/range {v54 .. v57}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v54

    aput-wide v54, v52, v25

    .line 86
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_3

    .line 90
    aget-object v52, v4, v25

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 93
    :cond_1
    move/from16 v22, v25

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2

    .line 94
    aget-object v52, v4, v22

    aget-wide v54, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v56, v53, v25

    div-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 93
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 96
    :cond_2
    aget-object v52, v4, v25

    aget-wide v54, v52, v25

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 98
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 100
    .end local v22    # "i":I
    :cond_4
    add-int/lit8 v24, v25, 0x1

    .local v24, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_7

    .line 101
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_6

    .line 105
    const-wide/16 v46, 0x0

    .line 106
    .local v46, "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_5

    .line 107
    aget-object v52, v4, v22

    aget-wide v52, v52, v25

    aget-object v54, v4, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 106
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 109
    :cond_5
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v4, v25

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 110
    move/from16 v22, v25

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_6

    .line 111
    aget-object v52, v4, v22

    aget-wide v54, v52, v24

    aget-object v53, v4, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 110
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 118
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_6
    aget-object v52, v4, v25

    aget-wide v52, v52, v24

    aput-wide v52, v5, v24

    .line 100
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 120
    :cond_7
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    const/16 v52, 0x1

    :goto_6
    if-eqz v52, :cond_9

    .line 125
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-object v53, v4, v22

    aget-wide v54, v53, v25

    aput-wide v54, v52, v25

    .line 125
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 120
    .end local v22    # "i":I
    :cond_8
    const/16 v52, 0x0

    goto :goto_6

    .line 129
    :cond_9
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    .line 134
    const-wide/16 v52, 0x0

    aput-wide v52, v5, v25

    .line 135
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_a

    .line 136
    aget-wide v52, v5, v25

    aget-wide v54, v5, v22

    invoke-static/range {v52 .. v55}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v52

    aput-wide v52, v5, v25

    .line 135
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 138
    :cond_a
    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_d

    .line 139
    add-int/lit8 v52, v25, 0x1

    aget-wide v52, v5, v52

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_b

    .line 140
    aget-wide v52, v5, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v5, v25

    .line 142
    :cond_b
    add-int/lit8 v22, v25, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_c

    .line 143
    aget-wide v52, v5, v22

    aget-wide v54, v5, v25

    div-double v52, v52, v54

    aput-wide v52, v5, v22

    .line 142
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 145
    :cond_c
    add-int/lit8 v52, v25, 0x1

    aget-wide v54, v5, v52

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    aput-wide v54, v5, v52

    .line 147
    :cond_d
    aget-wide v52, v5, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v5, v25

    .line 148
    add-int/lit8 v52, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_12

    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_12

    .line 152
    add-int/lit8 v22, v25, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    .line 153
    const-wide/16 v52, 0x0

    aput-wide v52, v51, v22

    .line 152
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 155
    :cond_e
    add-int/lit8 v24, v25, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_10

    .line 156
    add-int/lit8 v22, v25, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_f

    .line 157
    aget-wide v52, v51, v22

    aget-wide v54, v5, v24

    aget-object v56, v4, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    aput-wide v52, v51, v22

    .line 156
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 155
    :cond_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_b

    .line 160
    :cond_10
    add-int/lit8 v24, v25, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_12

    .line 161
    aget-wide v52, v5, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v5, v54

    div-double v46, v52, v54

    .line 162
    .restart local v46    # "t":D
    add-int/lit8 v22, v25, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_11

    .line 163
    aget-object v52, v4, v22

    aget-wide v54, v52, v24

    aget-wide v56, v51, v22

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 162
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 160
    :cond_11
    add-int/lit8 v24, v24, 0x1

    goto :goto_d

    .line 167
    .end local v46    # "t":D
    :cond_12
    if-eqz v50, :cond_13

    .line 172
    add-int/lit8 v22, v25, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_13

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v5, v22

    aput-wide v54, v52, v25

    .line 172
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 79
    .end local v22    # "i":I
    :cond_13
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 181
    .end local v24    # "j":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, 0x1

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 182
    .local v31, "p":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v28

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-object v53, v4, v28

    aget-wide v54, v53, v28

    aput-wide v54, v52, v28

    .line 185
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v53

    .line 188
    :cond_16
    add-int/lit8 v52, v29, 0x1

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 189
    aget-object v52, v4, v29

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    aput-wide v52, v5, v29

    .line 191
    :cond_17
    add-int/lit8 v52, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 195
    if-eqz v33, :cond_21

    .line 196
    move/from16 v24, v28

    .restart local v24    # "j":I
    :goto_10
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 197
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_18

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v24

    .line 197
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 200
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v24

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v24

    .line 196
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 202
    .end local v22    # "i":I
    :cond_19
    add-int/lit8 v25, v28, -0x1

    :goto_12
    if-ltz v25, :cond_21

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_1e

    .line 204
    add-int/lit8 v24, v25, 0x1

    :goto_13
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 205
    const-wide/16 v46, 0x0

    .line 206
    .restart local v46    # "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1a

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 206
    add-int/lit8 v22, v22, 0x1

    goto :goto_14

    .line 209
    :cond_1a
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 210
    move/from16 v22, v25

    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1b

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 210
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    .line 204
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_13

    .line 214
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_1c
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1d

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 214
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    .line 217
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v25

    aget-wide v54, v53, v25

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 218
    const/16 v22, 0x0

    :goto_17
    add-int/lit8 v52, v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_20

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 218
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 222
    .end local v22    # "i":I
    :cond_1e
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 222
    add-int/lit8 v22, v22, 0x1

    goto :goto_18

    .line 225
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v25

    .line 202
    :cond_20
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_12

    .line 232
    .end local v22    # "i":I
    .end local v24    # "j":I
    :cond_21
    if-eqz v50, :cond_26

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v25, v52, -0x1

    :goto_19
    if-ltz v25, :cond_26

    .line 234
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_24

    .line 235
    add-int/lit8 v24, v25, 0x1

    .restart local v24    # "j":I
    :goto_1a
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_24

    .line 236
    const-wide/16 v46, 0x0

    .line 237
    .restart local v46    # "t":D
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_22

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 237
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 240
    :cond_22
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-object v54, v54, v55

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 241
    add-int/lit8 v22, v25, 0x1

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_23

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 241
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 235
    :cond_23
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    .line 246
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v46    # "t":D
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_25

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 246
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    .line 249
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v25

    .line 233
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_19

    .line 255
    .end local v22    # "i":I
    :cond_26
    add-int/lit8 v32, v31, -0x1

    .line 256
    .local v32, "pp":I
    const/16 v23, 0x0

    .line 257
    .local v23, "iter":I
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide/high16 v54, -0x3fb6000000000000L    # -52.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 258
    .local v16, "eps":D
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide v54, -0x3f71d00000000000L    # -966.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v48

    .line 259
    .local v48, "tiny":D
    :cond_27
    :goto_1e
    if-lez v31, :cond_44

    .line 274
    add-int/lit8 v25, v31, -0x2

    :goto_1f
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-lt v0, v1, :cond_28

    .line 275
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2a

    .line 284
    :cond_28
    :goto_20
    add-int/lit8 v52, v31, -0x2

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_2c

    .line 285
    const/16 v26, 0x4

    .line 308
    .local v26, "kase":I
    :goto_21
    add-int/lit8 v25, v25, 0x1

    .line 312
    packed-switch v26, :pswitch_data_0

    goto :goto_1e

    .line 317
    :pswitch_0
    add-int/lit8 v52, v31, -0x2

    aget-wide v18, v5, v52

    .line 318
    .local v18, "f":D
    add-int/lit8 v52, v31, -0x2

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 319
    add-int/lit8 v24, v31, -0x2

    .restart local v24    # "j":I
    :goto_22
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_27

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 321
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v10, v52, v46

    .line 322
    .local v10, "cs":D
    div-double v40, v18, v46

    .line 323
    .local v40, "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 324
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_29

    .line 325
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v24, -0x1

    aget-wide v54, v5, v54

    mul-double v18, v52, v54

    .line 326
    add-int/lit8 v52, v24, -0x1

    add-int/lit8 v53, v24, -0x1

    aget-wide v54, v5, v53

    mul-double v54, v54, v10

    aput-wide v54, v5, v52

    .line 328
    :cond_29
    if-eqz v50, :cond_34

    .line 329
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_34

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v31, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v31, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v31, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 329
    add-int/lit8 v22, v22, 0x1

    goto :goto_23

    .line 278
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v26    # "kase":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_2a
    aget-wide v52, v5, v25

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v25, 0x1

    aget-wide v56, v56, v57

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->abs(D)D

    move-result-wide v56

    add-double v54, v54, v56

    mul-double v54, v54, v16

    add-double v54, v54, v48

    .line 278
    cmpg-double v52, v52, v54

    if-gtz v52, :cond_2b

    .line 280
    const-wide/16 v52, 0x0

    aput-wide v52, v5, v25

    goto/16 :goto_20

    .line 274
    :cond_2b
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_1f

    .line 288
    :cond_2c
    add-int/lit8 v27, v31, -0x1

    .local v27, "ks":I
    :goto_24
    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_2d

    .line 289
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    .line 299
    :cond_2d
    :goto_25
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_32

    .line 300
    const/16 v26, 0x3

    .restart local v26    # "kase":I
    goto/16 :goto_21

    .line 292
    .end local v26    # "kase":I
    :cond_2e
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_2f

    aget-wide v52, v5, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-wide/from16 v54, v52

    .line 293
    :goto_26
    add-int/lit8 v52, v25, 0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-eq v0, v1, :cond_30

    add-int/lit8 v52, v27, -0x1

    aget-wide v52, v5, v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    .line 292
    :goto_27
    add-double v46, v54, v52

    .line 294
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    mul-double v54, v16, v46

    add-double v54, v54, v48

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_31

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v27

    goto :goto_25

    .line 292
    .end local v46    # "t":D
    :cond_2f
    const-wide/16 v52, 0x0

    move-wide/from16 v54, v52

    goto :goto_26

    .line 293
    :cond_30
    const-wide/16 v52, 0x0

    goto :goto_27

    .line 288
    .restart local v46    # "t":D
    :cond_31
    add-int/lit8 v27, v27, -0x1

    goto :goto_24

    .line 301
    .end local v46    # "t":D
    :cond_32
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_33

    .line 302
    const/16 v26, 0x1

    .restart local v26    # "kase":I
    goto/16 :goto_21

    .line 304
    .end local v26    # "kase":I
    :cond_33
    const/16 v26, 0x2

    .line 305
    .restart local v26    # "kase":I
    move/from16 v25, v27

    goto/16 :goto_21

    .line 319
    .end local v27    # "ks":I
    .restart local v10    # "cs":D
    .restart local v18    # "f":D
    .restart local v24    # "j":I
    .restart local v40    # "sn":D
    .restart local v46    # "t":D
    :cond_34
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_22

    .line 342
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_1
    add-int/lit8 v52, v25, -0x1

    aget-wide v18, v5, v52

    .line 343
    .restart local v18    # "f":D
    add-int/lit8 v52, v25, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 344
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_28
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 346
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v10, v52, v46

    .line 347
    .restart local v10    # "cs":D
    div-double v40, v18, v46

    .line 348
    .restart local v40    # "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 349
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-wide v54, v5, v24

    mul-double v18, v52, v54

    .line 350
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    aput-wide v52, v5, v24

    .line 351
    if-eqz v33, :cond_35

    .line 352
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_35

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v25, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v25, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 352
    add-int/lit8 v22, v22, 0x1

    goto :goto_29

    .line 344
    .end local v22    # "i":I
    :cond_35
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_28

    .line 369
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v31, -0x2

    aget-wide v54, v54, v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    .line 368
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    .line 369
    add-int/lit8 v54, v31, -0x2

    aget-wide v54, v5, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    .line 368
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    .line 368
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    .line 370
    aget-wide v54, v5, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    .line 368
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    .line 371
    .local v34, "scale":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    div-double v42, v52, v34

    .line 372
    .local v42, "sp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x2

    aget-wide v52, v52, v53

    div-double v44, v52, v34

    .line 373
    .local v44, "spm1":D
    add-int/lit8 v52, v31, -0x2

    aget-wide v52, v5, v52

    div-double v14, v52, v34

    .line 374
    .local v14, "epm1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    div-double v38, v52, v34

    .line 375
    .local v38, "sk":D
    aget-wide v52, v5, v25

    div-double v12, v52, v34

    .line 376
    .local v12, "ek":D
    add-double v52, v44, v42

    sub-double v54, v44, v42

    mul-double v52, v52, v54

    mul-double v54, v14, v14

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v6, v52, v54

    .line 377
    .local v6, "b":D
    mul-double v52, v42, v14

    mul-double v54, v42, v14

    mul-double v8, v52, v54

    .line 378
    .local v8, "c":D
    const-wide/16 v36, 0x0

    .line 379
    .local v36, "shift":D
    const-wide/16 v52, 0x0

    cmpl-double v52, v6, v52

    if-eqz v52, :cond_39

    const/16 v52, 0x1

    move/from16 v53, v52

    :goto_2a
    const-wide/16 v54, 0x0

    cmpl-double v52, v8, v54

    if-eqz v52, :cond_3a

    const/16 v52, 0x1

    :goto_2b
    or-int v52, v52, v53

    if-eqz v52, :cond_37

    .line 380
    mul-double v52, v6, v6

    add-double v52, v52, v8

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 381
    const-wide/16 v52, 0x0

    cmpg-double v52, v6, v52

    if-gez v52, :cond_36

    .line 382
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 384
    :cond_36
    add-double v52, v6, v36

    div-double v36, v8, v52

    .line 386
    :cond_37
    add-double v52, v38, v42

    sub-double v54, v38, v42

    mul-double v52, v52, v54

    add-double v18, v52, v36

    .line 387
    .restart local v18    # "f":D
    mul-double v20, v38, v12

    .line 391
    .local v20, "g":D
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_2c
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3d

    .line 392
    invoke-static/range {v18 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 393
    .restart local v46    # "t":D
    div-double v10, v18, v46

    .line 394
    .restart local v10    # "cs":D
    div-double v40, v20, v46

    .line 395
    .restart local v40    # "sn":D
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_38

    .line 396
    add-int/lit8 v52, v24, -0x1

    aput-wide v46, v5, v52

    .line 398
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    aget-wide v54, v5, v24

    mul-double v54, v54, v40

    add-double v18, v52, v54

    .line 399
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v24

    mul-double v54, v54, v40

    sub-double v52, v52, v54

    aput-wide v52, v5, v24

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    aget-wide v52, v52, v53

    mul-double v20, v40, v52

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v10

    aput-wide v54, v52, v53

    .line 402
    if-eqz v50, :cond_3b

    .line 403
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3b

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 403
    add-int/lit8 v22, v22, 0x1

    goto :goto_2d

    .line 379
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_39
    const/16 v52, 0x0

    move/from16 v53, v52

    goto/16 :goto_2a

    :cond_3a
    const/16 v52, 0x0

    goto/16 :goto_2b

    .line 409
    .restart local v10    # "cs":D
    .restart local v18    # "f":D
    .restart local v20    # "g":D
    .restart local v24    # "j":I
    .restart local v40    # "sn":D
    .restart local v46    # "t":D
    :cond_3b
    invoke-static/range {v18 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 410
    div-double v10, v18, v46

    .line 411
    div-double v40, v20, v46

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 413
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v18, v52, v54

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    aget-wide v56, v5, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 415
    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v5, v52

    mul-double v20, v40, v52

    .line 416
    add-int/lit8 v52, v24, 0x1

    add-int/lit8 v53, v24, 0x1

    aget-wide v54, v5, v53

    mul-double v54, v54, v10

    aput-wide v54, v5, v52

    .line 417
    if-eqz v33, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    .line 418
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 418
    add-int/lit8 v22, v22, 0x1

    goto :goto_2e

    .line 391
    .end local v22    # "i":I
    :cond_3c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2c

    .line 425
    .end local v10    # "cs":D
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_3d
    add-int/lit8 v52, v31, -0x2

    aput-wide v18, v5, v52

    .line 426
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1e

    .line 436
    .end local v6    # "b":D
    .end local v8    # "c":D
    .end local v12    # "ek":D
    .end local v14    # "epm1":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v24    # "j":I
    .end local v34    # "scale":D
    .end local v36    # "shift":D
    .end local v38    # "sk":D
    .end local v42    # "sp":D
    .end local v44    # "spm1":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_40

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v56, 0x0

    cmpg-double v52, v52, v56

    if-gez v52, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    :goto_2f
    aput-wide v52, v54, v25

    .line 438
    if-eqz v50, :cond_40

    .line 439
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_30
    move/from16 v0, v22

    move/from16 v1, v32

    if-gt v0, v1, :cond_40

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 439
    add-int/lit8 v22, v22, 0x1

    goto :goto_30

    .line 437
    .end local v22    # "i":I
    :cond_3e
    const-wide/16 v52, 0x0

    goto :goto_2f

    .line 464
    .restart local v46    # "t":D
    :cond_3f
    add-int/lit8 v25, v25, 0x1

    .line 447
    .end local v46    # "t":D
    :cond_40
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_41

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-wide v54, v54, v55

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_42

    .line 466
    :cond_41
    const/16 v23, 0x0

    .line 467
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_1e

    .line 451
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v46, v52, v25

    .line 452
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v53, v54

    aput-wide v54, v52, v25

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v25, 0x1

    aput-wide v46, v52, v53

    .line 454
    if-eqz v50, :cond_43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    .line 455
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_43

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v46, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v25

    .line 455
    add-int/lit8 v22, v22, 0x1

    goto :goto_31

    .line 459
    .end local v22    # "i":I
    :cond_43
    if-eqz v33, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    .line 460
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3f

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v46, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v25

    .line 460
    add-int/lit8 v22, v22, 0x1

    goto :goto_32

    .line 52
    .end local v22    # "i":I
    .end local v26    # "kase":I
    .end local v46    # "t":D
    :cond_44
    return-void

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .locals 5

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    .prologue
    .line 507
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 508
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 509
    .local v0, "S":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v2, v4, :cond_1

    .line 510
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_0

    .line 511
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 513
    :cond_0
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v5, v2

    aput-wide v6, v4, v2

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public getSingularValues()[D
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 5

    .prologue
    .line 483
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 4

    .prologue
    .line 491
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .locals 10

    .prologue
    .line 539
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb6000000000000L    # -52.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 540
    .local v0, "eps":D
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    mul-double v4, v6, v0

    .line 541
    .local v4, "tol":D
    const/4 v3, 0x0

    .line 542
    .local v3, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 543
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v6, v2

    cmpl-double v6, v6, v4

    if-lez v6, :cond_0

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    :cond_1
    return v3
.end method
