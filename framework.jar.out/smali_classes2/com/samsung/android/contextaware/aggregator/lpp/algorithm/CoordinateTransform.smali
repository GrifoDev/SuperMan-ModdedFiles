.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enu2llh([D[D)[D
    .locals 1
    .param p0, "enu"    # [D
    .param p1, "orgllh"    # [D

    .prologue
    .line 216
    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2xyz([D[D)[D

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static enu2xyz([D[D)[D
    .locals 25
    .param p0, "enu"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 168
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 171
    .local v19, "xyz":[D
    new-instance v18, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 174
    .local v18, "tmpenu":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v5

    .line 178
    .local v5, "orgllh":[D
    const/16 v20, 0x0

    aget-wide v12, v5, v20

    .line 179
    .local v12, "phi":D
    const/16 v20, 0x1

    aget-wide v10, v5, v20

    .line 180
    .local v10, "lam":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 181
    .local v16, "sinphi":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 182
    .local v8, "cosphi":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 183
    .local v14, "sinlam":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 191
    .local v6, "coslam":D
    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 192
    .local v4, "R":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    neg-double v0, v14

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 193
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 194
    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 195
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 196
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    const/16 v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 197
    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 198
    mul-double v20, v8, v6

    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 199
    mul-double v20, v8, v14

    const/16 v22, 0x2

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 200
    const/16 v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 206
    const/16 v20, 0x0

    aget-wide v20, p1, v20

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v22

    add-double v20, v20, v22

    const/16 v22, 0x0

    aput-wide v20, v19, v22

    .line 207
    const/16 v20, 0x1

    aget-wide v20, p1, v20

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v22

    add-double v20, v20, v22

    const/16 v22, 0x1

    aput-wide v20, v19, v22

    .line 208
    const/16 v20, 0x2

    aget-wide v20, p1, v20

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v22

    add-double v20, v20, v22

    const/16 v22, 0x2

    aput-wide v20, v19, v22

    .line 212
    return-object v19
.end method

.method public static llh2enu([D[D)[D
    .locals 8
    .param p0, "llh"    # [D
    .param p1, "llhorg"    # [D

    .prologue
    const/4 v5, 0x3

    .line 55
    new-array v1, v5, [D

    .line 56
    .local v1, "xyz":[D
    new-array v3, v5, [D

    .line 60
    .local v3, "xyzorg":[D
    invoke-static {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v2

    .line 61
    .local v2, "xyz2":[D
    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    .line 63
    .local v4, "xyzorg2":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 64
    aget-wide v6, v2, v0

    aput-wide v6, v1, v0

    .line 65
    aget-wide v6, v4, v0

    aput-wide v6, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2enu([D[D)[D

    move-result-object v5

    return-object v5
.end method

.method public static llh2xyz([D)[D
    .locals 38
    .param p0, "llh"    # [D

    .prologue
    .line 19
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [D

    move-object/from16 v28, v0

    .line 22
    .local v28, "xyz":[D
    const/16 v29, 0x0

    aget-wide v12, p0, v29

    .line 23
    .local v12, "phi":D
    const/16 v29, 0x1

    aget-wide v10, p0, v29

    .line 24
    .local v10, "lambda":D
    const/16 v29, 0x2

    aget-wide v8, p0, v29

    .line 28
    .local v8, "h":D
    const-wide v34, 0x3fefe488a57a12e4L    # 0.996647189328169

    const-wide v36, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double v34, v34, v36

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v34, v36, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 30
    .local v6, "e":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 31
    .local v16, "sinphi":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 32
    .local v4, "cosphi":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 33
    .local v2, "coslam":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 34
    .local v14, "sinlam":D
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v34

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    mul-double v18, v34, v36

    .line 35
    .local v18, "tan2phi":D
    mul-double v34, v6, v6

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v20, v36, v34

    .line 36
    .local v20, "tmp":D
    mul-double v34, v20, v18

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    add-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 26
    .local v24, "tmpden":D
    const-wide v34, 0x415854a640000000L    # 6378137.0

    .line 40
    mul-double v34, v34, v2

    div-double v34, v34, v24

    mul-double v36, v8, v2

    mul-double v36, v36, v4

    add-double v26, v34, v36

    .line 26
    .local v26, "x":D
    const-wide v34, 0x415854a640000000L    # 6378137.0

    .line 42
    mul-double v34, v34, v14

    div-double v34, v34, v24

    mul-double v36, v8, v14

    mul-double v36, v36, v4

    add-double v30, v34, v36

    .line 44
    .local v30, "y":D
    mul-double v34, v6, v6

    mul-double v34, v34, v16

    mul-double v34, v34, v16

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    sub-double v34, v36, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 26
    .local v22, "tmp2":D
    const-wide v34, 0x415854a640000000L    # 6378137.0

    .line 45
    mul-double v34, v34, v20

    mul-double v34, v34, v16

    div-double v34, v34, v22

    mul-double v36, v8, v16

    add-double v32, v34, v36

    .line 47
    .local v32, "z":D
    const/16 v29, 0x0

    aput-wide v26, v28, v29

    .line 48
    const/16 v29, 0x1

    aput-wide v30, v28, v29

    .line 49
    const/16 v29, 0x2

    aput-wide v32, v28, v29

    .line 51
    return-object v28
.end method

.method public static xyz2enu([D[D)[D
    .locals 25
    .param p0, "xyz"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 71
    const/4 v3, 0x3

    new-array v9, v3, [D

    .line 75
    .local v9, "enu":[D
    new-instance v24, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 76
    .local v24, "tmpxyz":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v17, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 78
    .local v17, "tmporg":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 80
    .local v2, "difxyz":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->uminus()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v16

    .line 83
    .local v16, "orgllh":[D
    const/4 v3, 0x0

    aget-wide v18, v16, v3

    .line 84
    .local v18, "phi":D
    const/4 v3, 0x1

    aget-wide v14, v16, v3

    .line 85
    .local v14, "lam":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 86
    .local v22, "sinphi":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 87
    .local v12, "cosphi":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 88
    .local v20, "sinlam":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 90
    .local v10, "coslam":D
    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v8, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 96
    .local v8, "R":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    move-wide/from16 v0, v20

    neg-double v4, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 97
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 98
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 99
    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double/2addr v4, v10

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 100
    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double v4, v4, v20

    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 101
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v8, v3, v4, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 102
    mul-double v4, v12, v10

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 103
    mul-double v4, v12, v20

    const/4 v3, 0x2

    const/4 v6, 0x1

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 104
    const/4 v3, 0x2

    const/4 v4, 0x2

    move-wide/from16 v0, v22

    invoke-virtual {v8, v3, v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 106
    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x0

    aput-wide v4, v9, v3

    .line 107
    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x1

    aput-wide v4, v9, v3

    .line 108
    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x2

    aput-wide v4, v9, v3

    .line 110
    return-object v9
.end method

.method public static xyz2llh([D)[D
    .locals 68
    .param p0, "xyz"    # [D

    .prologue
    .line 114
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [D

    move-object/from16 v30, v0

    .line 117
    .local v30, "llh":[D
    const/16 v31, 0x0

    aget-wide v46, p0, v31

    .line 118
    .local v46, "x":D
    const/16 v31, 0x1

    aget-wide v50, p0, v31

    .line 119
    .local v50, "y":D
    const/16 v31, 0x2

    aget-wide v54, p0, v31

    .line 120
    .local v54, "z":D
    mul-double v48, v46, v46

    .line 121
    .local v48, "x2":D
    mul-double v52, v50, v50

    .line 122
    .local v52, "y2":D
    mul-double v56, v54, v54

    .line 126
    .local v56, "z2":D
    const-wide v60, 0x3fefe488a57a12e4L    # 0.996647189328169

    const-wide v62, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double v60, v60, v62

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v60, v62, v60

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 127
    .local v20, "e":D
    const-wide v16, 0x42c260252eea6b87L    # 4.0408299984087055E13

    .line 128
    .local v16, "b2":D
    mul-double v22, v20, v20

    .line 129
    .local v22, "e2":D
    const-wide v60, 0x3ff00dc780fcae33L    # 1.0033640898281078

    mul-double v24, v20, v60

    .line 130
    .local v24, "ep":D
    add-double v60, v48, v52

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    .line 131
    .local v34, "r":D
    mul-double v36, v34, v34

    .line 132
    .local v36, "r2":D
    const-wide v60, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide v62, 0x42c260252eea6b87L    # 4.0408299984087055E13

    sub-double v2, v60, v62

    .line 133
    .local v2, "E2":D
    const-wide/high16 v60, 0x404b000000000000L    # 54.0

    mul-double v60, v60, v16

    mul-double v4, v60, v56

    .line 134
    .local v4, "F":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    sub-double v60, v60, v22

    mul-double v60, v60, v56

    add-double v60, v60, v36

    mul-double v62, v22, v2

    sub-double v6, v60, v62

    .line 135
    .local v6, "G":D
    mul-double v60, v22, v22

    mul-double v60, v60, v4

    mul-double v60, v60, v36

    mul-double v62, v6, v6

    mul-double v62, v62, v6

    div-double v18, v60, v62

    .line 136
    .local v18, "c":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v18

    mul-double v62, v18, v18

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    mul-double v64, v64, v18

    add-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    add-double v60, v60, v62

    const-wide v62, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v40

    .line 137
    .local v40, "s":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    div-double v60, v60, v40

    add-double v60, v60, v40

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v62

    const-wide/high16 v62, 0x4008000000000000L    # 3.0

    mul-double v60, v60, v62

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    div-double v62, v62, v40

    add-double v62, v62, v40

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    add-double v62, v62, v64

    mul-double v60, v60, v62

    mul-double v60, v60, v6

    mul-double v60, v60, v6

    div-double v8, v4, v60

    .line 138
    .local v8, "P":D
    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    mul-double v60, v60, v22

    mul-double v60, v60, v22

    mul-double v60, v60, v8

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v60, v60, v62

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 139
    .local v10, "Q":D
    mul-double v60, v8, v22

    mul-double v60, v60, v34

    move-wide/from16 v0, v60

    neg-double v0, v0

    move-wide/from16 v60, v0

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    add-double v62, v62, v10

    div-double v60, v60, v62

    const-wide v62, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    div-double v62, v62, v64

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    div-double v64, v64, v10

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v66

    mul-double v62, v62, v64

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v22

    mul-double v64, v64, v8

    mul-double v64, v64, v56

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v10

    mul-double v66, v66, v10

    div-double v64, v64, v66

    sub-double v62, v62, v64

    mul-double v64, v8, v36

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    div-double v64, v64, v66

    sub-double v62, v62, v64

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    add-double v38, v60, v62

    .line 140
    .local v38, "ro":D
    mul-double v60, v22, v38

    sub-double v60, v34, v60

    mul-double v62, v22, v38

    sub-double v62, v34, v62

    mul-double v44, v60, v62

    .line 141
    .local v44, "tmp":D
    add-double v60, v44, v56

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 142
    .local v12, "U":D
    const-wide/high16 v60, 0x3ff0000000000000L    # 1.0

    sub-double v60, v60, v22

    mul-double v60, v60, v56

    add-double v60, v60, v44

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 143
    .local v14, "V":D
    mul-double v60, v16, v54

    .line 124
    const-wide v62, 0x415854a640000000L    # 6378137.0

    .line 143
    mul-double v62, v62, v14

    div-double v58, v60, v62

    .line 124
    .local v58, "zo":D
    const-wide v60, 0x415854a640000000L    # 6378137.0

    .line 145
    mul-double v60, v60, v14

    div-double v60, v16, v60

    const-wide/high16 v62, 0x3ff0000000000000L    # 1.0

    sub-double v60, v62, v60

    mul-double v26, v12, v60

    .line 147
    .local v26, "height":D
    mul-double v60, v24, v24

    mul-double v60, v60, v58

    add-double v60, v60, v54

    div-double v60, v60, v34

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->atan(D)D

    move-result-wide v28

    .line 149
    .local v28, "lat":D
    div-double v60, v50, v46

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->atan(D)D

    move-result-wide v42

    .line 150
    .local v42, "temp":D
    const-wide/16 v60, 0x0

    cmpl-double v31, v46, v60

    if-ltz v31, :cond_0

    .line 151
    move-wide/from16 v32, v42

    .line 160
    .local v32, "lon":D
    :goto_0
    const/16 v31, 0x0

    aput-wide v28, v30, v31

    .line 161
    const/16 v31, 0x1

    aput-wide v32, v30, v31

    .line 162
    const/16 v31, 0x2

    aput-wide v26, v30, v31

    .line 164
    return-object v30

    .line 153
    .end local v32    # "lon":D
    :cond_0
    const-wide/16 v60, 0x0

    cmpg-double v31, v46, v60

    if-gez v31, :cond_1

    const-wide/16 v60, 0x0

    cmpl-double v31, v50, v60

    if-ltz v31, :cond_1

    .line 154
    const-wide v60, 0x400921fb54442d18L    # Math.PI

    add-double v32, v60, v42

    .line 153
    .restart local v32    # "lon":D
    goto :goto_0

    .line 157
    .end local v32    # "lon":D
    :cond_1
    const-wide v60, 0x400921fb54442d18L    # Math.PI

    sub-double v32, v42, v60

    .restart local v32    # "lon":D
    goto :goto_0
.end method
