.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enu2llh([D[D)[D
    .locals 1

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

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    new-instance v18, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v5

    const/16 v20, 0x0

    aget-wide v12, v5, v20

    const/16 v20, 0x1

    aget-wide v10, v5, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    neg-double v0, v14

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

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

    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v20, v8, v6

    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v20, v8, v14

    const/16 v22, 0x2

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/16 v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

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

    return-object v19
.end method

.method public static llh2enu([D[D)[D
    .locals 8

    const/4 v5, 0x3

    new-array v1, v5, [D

    new-array v3, v5, [D

    invoke-static {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-wide v6, v2, v0

    aput-wide v6, v1, v0

    aget-wide v6, v4, v0

    aput-wide v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2enu([D[D)[D

    move-result-object v5

    return-object v5
.end method

.method public static llh2xyz([D)[D
    .locals 42

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [D

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aget-wide v16, p0, v33

    const/16 v33, 0x1

    aget-wide v14, p0, v33

    const/16 v33, 0x2

    aget-wide v12, p0, v33

    const-wide v2, 0x415854a640000000L    # 6378137.0

    const-wide v4, 0x41583fc4141bda51L    # 6356752.3142

    const-wide v38, 0x3fefe488a57a12e4L    # 0.996647189328169

    const-wide v40, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double v38, v38, v40

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v40, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    mul-double v22, v38, v40

    mul-double v38, v10, v10

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v24, v40, v38

    mul-double v38, v24, v22

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    const-wide v38, 0x415854a640000000L    # 6378137.0

    mul-double v38, v38, v6

    div-double v38, v38, v28

    mul-double v40, v12, v6

    mul-double v40, v40, v8

    add-double v30, v38, v40

    const-wide v38, 0x415854a640000000L    # 6378137.0

    mul-double v38, v38, v18

    div-double v38, v38, v28

    mul-double v40, v12, v18

    mul-double v40, v40, v8

    add-double v34, v38, v40

    mul-double v38, v10, v10

    mul-double v38, v38, v20

    mul-double v38, v38, v20

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    sub-double v38, v40, v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    const-wide v38, 0x415854a640000000L    # 6378137.0

    mul-double v38, v38, v24

    mul-double v38, v38, v20

    div-double v38, v38, v26

    mul-double v40, v12, v20

    add-double v36, v38, v40

    const/16 v33, 0x0

    aput-wide v30, v32, v33

    const/16 v33, 0x1

    aput-wide v34, v32, v33

    const/16 v33, 0x2

    aput-wide v36, v32, v33

    return-object v32
.end method

.method public static xyz2enu([D[D)[D
    .locals 25

    const/4 v3, 0x3

    new-array v9, v3, [D

    new-instance v24, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    new-instance v17, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

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

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v16

    const/4 v3, 0x0

    aget-wide v18, v16, v3

    const/4 v3, 0x1

    aget-wide v14, v16, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v8, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-wide/from16 v0, v20

    neg-double v4, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double/2addr v4, v10

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    move-wide/from16 v0, v22

    neg-double v4, v0

    mul-double v4, v4, v20

    const/4 v3, 0x1

    const/4 v6, 0x1

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v8, v3, v4, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v4, v12, v10

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v4, v12, v20

    const/4 v3, 0x2

    const/4 v6, 0x1

    invoke-virtual {v8, v3, v6, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-wide/from16 v0, v22

    invoke-virtual {v8, v3, v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x0

    aput-wide v4, v9, v3

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x1

    aput-wide v4, v9, v3

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    const/4 v3, 0x2

    aput-wide v4, v9, v3

    return-object v9
.end method

.method public static xyz2llh([D)[D
    .locals 72

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [D

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-wide v50, p0, v35

    const/16 v35, 0x1

    aget-wide v54, p0, v35

    const/16 v35, 0x2

    aget-wide v58, p0, v35

    mul-double v52, v50, v50

    mul-double v56, v54, v54

    mul-double v60, v58, v58

    const-wide v16, 0x415854a640000000L    # 6378137.0

    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    const-wide v64, 0x3fefe488a57a12e4L    # 0.996647189328169

    const-wide v66, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double v64, v64, v66

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    sub-double v64, v66, v64

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    const-wide v20, 0x42c260252eea6b87L    # 4.0408299984087055E13

    mul-double v26, v24, v24

    const-wide v64, 0x3ff00dc780fcae33L    # 1.0033640898281078

    mul-double v28, v24, v64

    add-double v64, v52, v56

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v38

    mul-double v40, v38, v38

    const-wide v64, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide v66, 0x42c260252eea6b87L    # 4.0408299984087055E13

    sub-double v2, v64, v66

    const-wide/high16 v64, 0x404b000000000000L    # 54.0

    mul-double v64, v64, v20

    mul-double v4, v64, v60

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v26

    mul-double v64, v64, v60

    add-double v64, v64, v40

    mul-double v66, v26, v2

    sub-double v6, v64, v66

    mul-double v64, v26, v26

    mul-double v64, v64, v4

    mul-double v64, v64, v40

    mul-double v66, v6, v6

    mul-double v66, v66, v6

    div-double v22, v64, v66

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v22

    mul-double v66, v22, v22

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    mul-double v68, v68, v22

    add-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v66

    add-double v64, v64, v66

    const-wide v66, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    div-double v64, v64, v44

    add-double v64, v64, v44

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v66

    const-wide/high16 v66, 0x4008000000000000L    # 3.0

    mul-double v64, v64, v66

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    div-double v66, v66, v44

    add-double v66, v66, v44

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v68

    mul-double v64, v64, v66

    mul-double v64, v64, v6

    mul-double v64, v64, v6

    div-double v8, v4, v64

    const-wide/high16 v64, 0x4000000000000000L    # 2.0

    mul-double v64, v64, v26

    mul-double v64, v64, v26

    mul-double v64, v64, v8

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v64, v8, v26

    mul-double v64, v64, v38

    move-wide/from16 v0, v64

    neg-double v0, v0

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v10

    div-double v64, v64, v66

    const-wide v66, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    div-double v68, v68, v10

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    add-double v68, v68, v70

    mul-double v66, v66, v68

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    sub-double v68, v68, v26

    mul-double v68, v68, v8

    mul-double v68, v68, v60

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    add-double v70, v70, v10

    mul-double v70, v70, v10

    div-double v68, v68, v70

    sub-double v66, v66, v68

    mul-double v68, v8, v40

    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    div-double v68, v68, v70

    sub-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v66

    add-double v42, v64, v66

    mul-double v64, v26, v42

    sub-double v64, v38, v64

    mul-double v66, v26, v42

    sub-double v66, v38, v66

    mul-double v48, v64, v66

    add-double v64, v48, v60

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v26

    mul-double v64, v64, v60

    add-double v64, v64, v48

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double v64, v20, v58

    const-wide v66, 0x415854a640000000L    # 6378137.0

    mul-double v66, v66, v14

    div-double v62, v64, v66

    const-wide v64, 0x415854a640000000L    # 6378137.0

    mul-double v64, v64, v14

    div-double v64, v20, v64

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    sub-double v64, v66, v64

    mul-double v30, v12, v64

    mul-double v64, v28, v28

    mul-double v64, v64, v62

    add-double v64, v64, v58

    div-double v64, v64, v38

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->atan(D)D

    move-result-wide v32

    div-double v64, v54, v50

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->atan(D)D

    move-result-wide v46

    const-wide/16 v64, 0x0

    cmpl-double v35, v50, v64

    if-ltz v35, :cond_0

    move-wide/from16 v36, v46

    :goto_0
    const/16 v35, 0x0

    aput-wide v32, v34, v35

    const/16 v35, 0x1

    aput-wide v36, v34, v35

    const/16 v35, 0x2

    aput-wide v30, v34, v35

    return-object v34

    :cond_0
    const-wide/16 v64, 0x0

    cmpg-double v35, v50, v64

    if-gez v35, :cond_1

    const-wide/16 v64, 0x0

    cmpl-double v35, v54, v64

    if-ltz v35, :cond_1

    const-wide v64, 0x400921fb54442d18L    # Math.PI

    add-double v36, v64, v46

    goto :goto_0

    :cond_1
    const-wide v64, 0x400921fb54442d18L    # Math.PI

    sub-double v36, v46, v64

    goto :goto_0
.end method
