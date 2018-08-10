.class public Lcom/samsung/android/graphics/SemMathUtils;
.super Ljava/lang/Object;
.source "SemMathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static compare(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static computeCosineCoeffs(F[F[FI)I
    .locals 12

    array-length v7, p1

    if-lt v7, p3, :cond_0

    array-length v7, p2

    if-ge v7, p3, :cond_1

    :cond_0
    const-string/jumbo v7, "HWUI_IMAGE_FILTER"

    const-string/jumbo v8, "Kernel size is bigger then coeffs array size. Index out of range error occurs!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    :cond_1
    const/4 v3, 0x1

    const/4 v7, 0x0

    cmpg-float v7, p0, v7

    if-gtz v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aput v7, p1, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aput v7, p2, v8

    :cond_2
    move v2, v3

    :goto_0
    if-ge v2, p3, :cond_5

    const/4 v7, 0x0

    aput v7, p1, v2

    const/4 v7, 0x0

    aput v7, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    float-to-int v7, p0

    const/4 v8, 0x1

    invoke-static {v7, v8, p3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(III)I

    move-result v3

    const/4 v5, 0x0

    int-to-float v7, v3

    div-float v4, p0, v7

    const/high16 v7, 0x3f000000    # 0.5f

    div-float v0, v7, p0

    const v7, 0x40490fdb    # (float)Math.PI

    div-float v1, v7, p0

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    aput v7, p1, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, p2, v8

    const/4 v6, 0x0

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v3, :cond_4

    int-to-float v7, v2

    mul-float v6, v7, v4

    float-to-double v8, v0

    mul-float v7, v6, v1

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v0

    add-double/2addr v8, v10

    double-to-float v7, v8

    aput v7, p1, v2

    aput v6, p2, v2

    aget v7, p1, v2

    add-float/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    const/4 v7, 0x0

    aget v7, p1, v7

    add-float/2addr v5, v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget v7, p1, v2

    div-float/2addr v7, v5

    aput v7, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v3
.end method

.method public static computeGaussianCoeffs(F[F[FI)I
    .locals 18

    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, p3

    if-lt v11, v0, :cond_0

    move-object/from16 v0, p2

    array-length v11, v0

    move/from16 v0, p3

    if-ge v11, v0, :cond_1

    :cond_0
    const-string/jumbo v11, "HWUI_IMAGE_FILTER"

    const-string/jumbo v12, "Kernel size is bigger then coeffs array size. Index out of range error occurs!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    :cond_1
    const/4 v5, 0x1

    const/4 v11, 0x0

    cmpg-float v11, p0, v11

    if-gtz v11, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, p1, v12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, p2, v12

    :cond_2
    move v4, v5

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_7

    const/4 v11, 0x0

    aput v11, p1, v4

    const/4 v11, 0x0

    aput v11, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const v11, 0x3f19999a    # 0.6f

    mul-float v11, v11, p0

    float-to-int v5, v11

    const/4 v8, 0x0

    move/from16 v0, p3

    if-le v5, v0, :cond_4

    int-to-float v11, v5

    div-float v8, p0, v11

    move/from16 v5, p3

    :goto_1
    const v11, 0x3e99999a    # 0.3f

    mul-float v11, v11, p0

    const v12, 0x3f19999a    # 0.6f

    add-float v10, v11, v12

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v10

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    float-to-double v14, v8

    mul-double/2addr v12, v14

    double-to-float v2, v12

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v10

    mul-float/2addr v11, v10

    const/high16 v12, -0x40800000    # -1.0f

    div-float v3, v12, v11

    const/4 v7, 0x0

    int-to-float v11, v5

    div-float v6, p0, v11

    const/4 v11, 0x0

    aput v2, p1, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, p2, v12

    const/4 v9, 0x0

    const/4 v4, 0x1

    :goto_2
    if-ge v4, v5, :cond_6

    add-float/2addr v9, v6

    float-to-double v12, v2

    mul-float v11, v9, v9

    mul-float/2addr v11, v3

    float-to-double v14, v11

    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, p1, v4

    aget v11, p1, v4

    add-float/2addr v7, v11

    aput v9, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    if-ge v5, v11, :cond_5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const v8, 0x3fd6c12b

    goto :goto_1

    :cond_6
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v7, v11

    const/4 v11, 0x0

    aget v11, p1, v11

    add-float/2addr v7, v11

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_2

    aget v11, p1, v4

    div-float/2addr v11, v7

    aput v11, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return v5
.end method
