.class public Lcom/airbnb/lottie/utils/GammaEvaluator;
.super Ljava/lang/Object;
.source "GammaEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EOCF_sRGB(F)F
    .locals 4

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float v0, p0, v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, p0

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static OECF_sRGB(F)F
    .locals 4

    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static evaluate(FII)I
    .locals 15

    shr-int/lit8 v13, p1, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v9, v13, v14

    shr-int/lit8 v13, p1, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v12, v13, v14

    shr-int/lit8 v13, p1, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v11, v13, v14

    move/from16 v0, p1

    and-int/lit16 v13, v0, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v10, v13, v14

    shr-int/lit8 v13, p2, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v3, v13, v14

    shr-int/lit8 v13, p2, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v6, v13, v14

    shr-int/lit8 v13, p2, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v5, v13, v14

    move/from16 v0, p2

    and-int/lit16 v13, v0, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v4, v13, v14

    invoke-static {v12}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v12

    invoke-static {v11}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v11

    invoke-static {v10}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v10

    invoke-static {v6}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v6

    invoke-static {v5}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v5

    invoke-static {v4}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v4

    sub-float v13, v3, v9

    mul-float/2addr v13, p0

    add-float v1, v9, v13

    sub-float v13, v6, v12

    mul-float/2addr v13, p0

    add-float v8, v12, v13

    sub-float v13, v5, v11

    mul-float/2addr v13, p0

    add-float v7, v11, v13

    sub-float v13, v4, v10

    mul-float/2addr v13, p0

    add-float v2, v10, v13

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v1, v13

    invoke-static {v8}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v8, v13, v14

    invoke-static {v7}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v7, v13, v14

    invoke-static {v2}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v2, v13, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    or-int/2addr v13, v14

    return v13
.end method
