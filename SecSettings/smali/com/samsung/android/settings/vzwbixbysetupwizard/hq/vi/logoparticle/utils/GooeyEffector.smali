.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/utils/GooeyEffector;
.super Ljava/lang/Object;
.source "GooeyEffector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGooeyConnection(Landroid/graphics/Path;FFFFFF)V
    .locals 38

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v30, 0x3fc90fdb

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/utils/GooeyEffector;->getDistance(FFFF)F

    move-result v17

    const/high16 v4, 0x40800000    # 4.0f

    add-float v4, v4, p3

    add-float v21, v4, p6

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v4, p3, p6

    sub-float v4, v17, v4

    sub-float v5, p3, p6

    sub-float v5, v21, v5

    div-float v20, v4, v5

    const/4 v4, 0x0

    cmpg-float v4, v20, v4

    if-gez v4, :cond_2

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v4, v17, v21

    if-gtz v4, :cond_1

    sub-float v4, p3, p6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v17, v4

    if-gtz v4, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    return-void

    :cond_2
    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-ltz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v20, v4

    if-gtz v4, :cond_3

    const v4, -0x4099999a    # -0.9f

    mul-float v4, v4, v20

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v19, v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    return-void

    :cond_4
    add-float v4, p3, p6

    cmpg-float v4, v17, v4

    if-gez v4, :cond_5

    mul-float v4, p3, p3

    mul-float v5, v17, v17

    add-float/2addr v4, v5

    mul-float v5, p6, p6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p3

    mul-float v5, v5, v17

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v33, v0

    mul-float v4, p6, p6

    mul-float v5, v17, v17

    add-float/2addr v4, v5

    mul-float v5, p3, p3

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p6

    mul-float v5, v5, v17

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v34, v0

    :goto_1
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/utils/GooeyEffector;->getAngleRad(FFFF)F

    move-result v11

    sub-float v4, p3, p6

    div-float v4, v4, v17

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v14, v4

    add-float v4, v11, v33

    sub-float v5, v14, v33

    mul-float v5, v5, v19

    add-float v12, v4, v5

    sub-float v4, v11, v33

    sub-float v5, v14, v33

    mul-float v5, v5, v19

    sub-float v13, v4, v5

    float-to-double v4, v11

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v4, v6

    move/from16 v0, v34

    float-to-double v6, v0

    sub-double/2addr v4, v6

    move/from16 v0, v34

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    sub-double v6, v8, v6

    float-to-double v8, v14

    sub-double/2addr v6, v8

    move/from16 v0, v19

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v15, v4

    float-to-double v4, v11

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v4, v6

    move/from16 v0, v34

    float-to-double v6, v0

    add-double/2addr v4, v6

    move/from16 v0, v34

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    sub-double v6, v8, v6

    float-to-double v8, v14

    sub-double/2addr v6, v8

    move/from16 v0, v19

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v16, v0

    new-instance v22, Landroid/graphics/PointF;

    move/from16 v0, p1

    float-to-double v4, v0

    move/from16 v0, p3

    float-to-double v6, v0

    float-to-double v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    float-to-double v0, v12

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v24, Landroid/graphics/PointF;

    move/from16 v0, p1

    float-to-double v4, v0

    move/from16 v0, p3

    float-to-double v6, v0

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p2

    float-to-double v6, v0

    move/from16 v0, p3

    float-to-double v8, v0

    float-to-double v0, v13

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v26, Landroid/graphics/PointF;

    move/from16 v0, p4

    float-to-double v4, v0

    move/from16 v0, p6

    float-to-double v6, v0

    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    float-to-double v0, v15

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v28, Landroid/graphics/PointF;

    move/from16 v0, p4

    float-to-double v4, v0

    move/from16 v0, p6

    float-to-double v6, v0

    move/from16 v0, v16

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p5

    float-to-double v6, v0

    move/from16 v0, p6

    float-to-double v8, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/utils/GooeyEffector;->getDistance(FFFF)F

    move-result v4

    add-float v5, p3, p6

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v17

    add-float v6, p3, p6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v18, v18, v4

    mul-float v31, p3, v18

    mul-float v32, p6, v18

    new-instance v23, Landroid/graphics/PointF;

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    move/from16 v0, v31

    float-to-double v6, v0

    const v8, 0x3fc90fdb

    sub-float v8, v12, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v6, v5

    move/from16 v0, v31

    float-to-double v8, v0

    const v5, 0x3fc90fdb

    sub-float v5, v12, v5

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v27, Landroid/graphics/PointF;

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    move/from16 v0, v32

    float-to-double v6, v0

    const v8, 0x3fc90fdb

    add-float/2addr v8, v15

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v6, v5

    move/from16 v0, v32

    float-to-double v8, v0

    const v5, 0x3fc90fdb

    add-float/2addr v5, v15

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v29, Landroid/graphics/PointF;

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    move/from16 v0, v32

    float-to-double v6, v0

    const v8, 0x3fc90fdb

    sub-float v8, v16, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v6, v5

    move/from16 v0, v32

    float-to-double v8, v0

    const v5, 0x3fc90fdb

    sub-float v5, v16, v5

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v25, Landroid/graphics/PointF;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    move/from16 v0, v31

    float-to-double v6, v0

    const v8, 0x3fc90fdb

    add-float/2addr v8, v13

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v6, v5

    move/from16 v0, v31

    float-to-double v8, v0

    const v5, 0x3fc90fdb

    add-float/2addr v5, v13

    float-to-double v0, v5

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    mul-double v8, v8, v36

    add-double/2addr v6, v8

    double-to-float v5, v6

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v27

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v27

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v26

    iget v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v26

    iget v10, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, v28

    iget v4, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v28

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v29

    iget v5, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v29

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v25

    iget v7, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v25

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v24

    iget v9, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, v24

    iget v10, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-void

    :cond_5
    const/16 v33, 0x0

    const/16 v34, 0x0

    goto/16 :goto_1
.end method

.method private static getAngleRad(FFFF)F
    .locals 4

    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static getDistance(FFFF)F
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-float v0, p0, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
