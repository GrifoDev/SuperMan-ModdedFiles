.class public Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# static fields
.field public static final DEUTAN:I = 0x1

.field public static final DMC_ONLY:I = 0x0

.field public static final DMC_SDC_HYBRID:I = 0x1

.field public static final NOT_COLORBLIND:I = 0x3

.field public static final PROTAN:I = 0x0

.field private static final RGB_CMY_MAX:I = 0xc

.field public static final TRITAN:I = 0x2


# instance fields
.field private CVDMethod:I

.field private CVDSeverity:D

.field private CVDStrength:D

.field private CVDType:I

.field private SpotsU:[D

.field private SpotsV:[D

.field private c_index:D

.field private mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field private mInputNums:[I

.field private majorAngle:D

.field private majorRadius:D

.field private minorRadius:D

.field private s_index:D

.field private tes:D

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iput-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    iput-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    invoke-direct {v0}, Lcom/android/server/accessibility/ColorTransferTable;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return-void

    :array_0
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    :array_1
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method

.method private Calc()V
    .locals 32

    const-wide/16 v8, 0x0

    const/16 v22, 0xf

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v20, v0

    const/16 v22, 0xf

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v21, v0

    const/4 v10, 0x0

    :goto_0
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    move-object/from16 v24, v0

    aget-wide v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v10, 0x1

    aget-wide v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    move-object/from16 v24, v0

    aget-wide v24, v24, v10

    sub-double v22, v22, v24

    aput-wide v22, v21, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_1

    aget-wide v22, v20, v10

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v24

    aget-wide v24, v21, v10

    mul-double v22, v22, v24

    add-double v16, v16, v22

    aget-wide v22, v20, v10

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    aget-wide v24, v21, v10

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    add-double v18, v18, v22

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    div-double v22, v16, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->atan(D)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v14, v22, v24

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [D

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    aput-wide v22, v11, v24

    const-wide/16 v22, 0x0

    const/16 v24, 0x1

    aput-wide v22, v11, v24

    const-wide/16 v22, 0x0

    cmpg-double v22, v14, v22

    if-gez v22, :cond_2

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v12, v14, v22

    :goto_2
    const/4 v10, 0x0

    :goto_3
    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    const/16 v22, 0x0

    aget-wide v24, v11, v22

    aget-wide v26, v21, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    aget-wide v28, v20, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    aput-wide v24, v11, v22

    const/16 v22, 0x1

    aget-wide v24, v11, v22

    aget-wide v26, v21, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    aget-wide v28, v20, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    mul-double v28, v28, v30

    sub-double v26, v26, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    aput-wide v24, v11, v22

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v12, v14, v22

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    aget-wide v22, v11, v22

    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    const/16 v24, 0x0

    aput-wide v22, v11, v24

    const/16 v22, 0x1

    aget-wide v22, v11, v22

    const-wide/high16 v24, 0x402e000000000000L    # 15.0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    const/16 v24, 0x1

    aput-wide v22, v11, v24

    const/16 v22, 0x0

    aget-wide v22, v11, v22

    const/16 v24, 0x1

    aget-wide v24, v11, v24

    cmpl-double v22, v22, v24

    if-lez v22, :cond_6

    const/16 v22, 0x0

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const/16 v22, 0x1

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v22, v22, v12

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    :goto_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4022795e9e1b089aL    # 9.23705

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff999999999999aL    # 1.6

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_7

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    :goto_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    const-wide v22, 0x3ff999999999999aL    # 1.6

    cmpg-double v22, v6, v22

    if-gez v22, :cond_4

    const-wide v6, 0x3ff999999999999aL    # 1.6

    :cond_4
    const-wide v22, 0x4010cccccccccccdL    # 4.2

    cmpl-double v22, v6, v22

    if-lez v22, :cond_5

    const-wide v6, 0x4010cccccccccccdL    # 4.2

    :cond_5
    const-wide v22, 0x3ff999999999999aL    # 1.6

    sub-double v22, v6, v22

    const-wide v24, 0x4004cccccccccccdL    # 2.6

    div-double v8, v22, v24

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    const-wide v22, 0x3fb999999999999aL    # 0.1

    cmpg-double v22, v8, v22

    if-gez v22, :cond_a

    const-wide/high16 v22, 0x4014000000000000L    # 5.0

    mul-double v4, v22, v8

    :goto_6
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    return-void

    :cond_6
    const/16 v22, 0x1

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const/16 v22, 0x0

    aget-wide v22, v11, v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    const-wide v22, 0x4066800000000000L    # 180.0

    mul-double v22, v22, v14

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    goto/16 :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe6666666666666L    # 0.7

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_8

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto/16 :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    move-wide/from16 v22, v0

    const-wide v24, -0x3fafc00000000000L    # -65.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_9

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto/16 :goto_5

    :cond_9
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto/16 :goto_5

    :cond_a
    const-wide v22, 0x3fb999999999999aL    # 0.1

    sub-double v22, v8, v22

    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    mul-double v22, v22, v24

    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v4, v24, v22

    goto :goto_6
.end method

.method private InitMakeUV()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    aget-wide v6, v5, v8

    aput-wide v6, v4, v8

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v6, v5, v8

    aput-wide v6, v4, v8

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0xf

    if-ge v1, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    aget v2, v4, v1

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :cond_0
    return v3
.end method

.method private roundHalfUp(D)D
    .locals 7

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x0

    mul-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-double v0, v2

    div-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method public calculate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->Calc()V

    return-void
.end method

.method public getCVDMethod()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    return v0
.end method

.method public getCVDSeverity()D
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/CVDCalculator;->roundHalfUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCVDStrength()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    return-wide v0
.end method

.method public getCVDType()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return v0
.end method

.method public getC_index()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    return-wide v0
.end method

.method public getMajorAngle()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    return-wide v0
.end method

.method public getMajorRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    return-wide v0
.end method

.method public getMinorRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    return-wide v0
.end method

.method public getPredefinedServerityAndUserParameter(II)[D
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/accessibility/ColorTransferTable;->getPredefinedValueForEachType(II)[D

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getRGBCMY(D)[I
    .locals 9

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    iget v3, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    iget-wide v4, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object v0

    return-object v0
.end method

.method public getRGBCMY(IIDD)[I
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v2, 0xc

    new-array v11, v2, [I

    const-string/jumbo v2, "CVDCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRGBCMY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", CVDType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Severity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x0

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x1

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x2

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x3

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x4

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x5

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x6

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x7

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/16 v3, 0x8

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xb

    aput v2, v11, v3

    :goto_0
    return-object v11

    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const v2, 0xff00

    const/4 v3, 0x0

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x2

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x3

    aput v2, v11, v3

    const v2, 0xff00

    const/4 v3, 0x4

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x5

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x6

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x7

    aput v2, v11, v3

    const v2, 0xff00

    const/16 v3, 0x8

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xb

    aput v2, v11, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x0

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x1

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x2

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x3

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x4

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x5

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x6

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x3

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/4 v3, 0x7

    aput v2, v11, v3

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v10

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    const/4 v4, 0x5

    move v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v12

    mul-int/lit16 v2, v10, 0x100

    add-int/2addr v2, v12

    const/16 v3, 0x8

    aput v2, v11, v3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_5

    const/16 v2, 0xcc

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xcc

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xcc

    const/16 v3, 0xb

    aput v2, v11, v3

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const v2, 0xff00

    const/4 v3, 0x0

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x2

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x3

    aput v2, v11, v3

    const v2, 0xff00

    const/4 v3, 0x4

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x5

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x6

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x7

    aput v2, v11, v3

    const v2, 0xff00

    const/16 v3, 0x8

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xb

    aput v2, v11, v3

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xff

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xb

    aput v2, v11, v3

    goto/16 :goto_0

    :cond_6
    const v2, 0xff00

    const/4 v3, 0x0

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x2

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x3

    aput v2, v11, v3

    const v2, 0xff00

    const/4 v3, 0x4

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x5

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x6

    aput v2, v11, v3

    const/16 v2, 0xff

    const/4 v3, 0x7

    aput v2, v11, v3

    const v2, 0xff00

    const/16 v3, 0x8

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0x9

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xa

    aput v2, v11, v3

    const/16 v2, 0xff

    const/16 v3, 0xb

    aput v2, v11, v3

    goto/16 :goto_0
.end method

.method public getS_index()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    return-wide v0
.end method

.method public getTes()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    return-wide v0
.end method

.method public setCVDMethod(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iput v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    goto :goto_0
.end method

.method public setNum([I)Z
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->InitMakeUV()Z

    move-result v0

    return v0
.end method
