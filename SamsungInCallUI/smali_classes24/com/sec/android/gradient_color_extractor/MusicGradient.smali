.class public Lcom/sec/android/gradient_color_extractor/MusicGradient;
.super Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.source "MusicGradient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;-><init>()V

    return-void
.end method

.method public static getAdjustedColor_primaryColor([F)[F
    .locals 12
    .param p0, "color_hsv"    # [F

    .prologue
    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 100
    const/4 v5, 0x3

    new-array v3, v5, [F

    aget v5, p0, v6

    aput v5, v3, v6

    aget v5, p0, v9

    aput v5, v3, v9

    aget v5, p0, v8

    aput v5, v3, v8

    .line 101
    .local v3, "color_hsv_adjusted":[F
    sget v5, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    invoke-static {v3, v5, v6}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "extraBrightness":F
    const/high16 v1, 0x3f400000    # 0.75f

    .line 104
    .local v1, "brightness_from":F
    const v2, 0x3f59999a    # 0.85f

    .line 105
    .local v2, "brightness_to":F
    aget v5, v3, v9

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    aput v5, v3, v9

    .line 107
    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    .line 108
    aget v5, v3, v8

    add-float/2addr v5, v4

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    .line 119
    :goto_0
    return-object v3

    .line 110
    .end local v1    # "brightness_from":F
    .end local v2    # "brightness_to":F
    .end local v4    # "extraBrightness":F
    :cond_0
    const v4, 0x3dcccccd    # 0.1f

    .line 111
    .restart local v4    # "extraBrightness":F
    const v1, 0x3f666666    # 0.9f

    .line 112
    .restart local v1    # "brightness_from":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 114
    .restart local v2    # "brightness_to":F
    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 115
    .local v0, "adjusted_b":F
    aget v5, v3, v9

    aget v6, v3, v8

    sub-float v6, v0, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v9

    .line 117
    aput v0, v3, v8

    goto :goto_0
.end method

.method public static getAdjustedColor_secondaryColor([F)[F
    .locals 10
    .param p0, "color_hsv"    # [F

    .prologue
    const/4 v6, 0x0

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 124
    const/4 v5, 0x3

    new-array v3, v5, [F

    aget v5, p0, v6

    aput v5, v3, v6

    aget v5, p0, v7

    aput v5, v3, v7

    aget v5, p0, v8

    aput v5, v3, v8

    .line 125
    .local v3, "color_hsv_adjusted":[F
    sget v5, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    invoke-static {v3, v5, v6}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, "extraBrightness":F
    const/high16 v1, 0x3f400000    # 0.75f

    .line 128
    .local v1, "brightness_from":F
    const v2, 0x3f59999a    # 0.85f

    .line 129
    .local v2, "brightness_to":F
    aget v5, v3, v7

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    aput v5, v3, v7

    .line 131
    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    .line 132
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aget v7, v3, v8

    add-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    .line 133
    aput v9, v3, v8

    .line 145
    :goto_0
    return-object v3

    .line 135
    .end local v1    # "brightness_from":F
    .end local v2    # "brightness_to":F
    .end local v4    # "extraBrightness":F
    :cond_0
    const v4, 0x3dcccccd    # 0.1f

    .line 136
    .restart local v4    # "extraBrightness":F
    const/high16 v1, 0x3f400000    # 0.75f

    .line 137
    .restart local v1    # "brightness_from":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    .restart local v2    # "brightness_to":F
    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 143
    .local v0, "adjusted_b":F
    aput v9, v3, v8

    goto :goto_0
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    const/16 v0, 0xb

    .line 95
    .local v0, "dominantColorNum":I
    const/4 v1, 0x1

    .line 96
    .local v1, "iterationNum":I
    invoke-static {p0, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v2

    return-object v2
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dominantColorNum"    # I
    .param p2, "iterationNum"    # I

    .prologue
    .line 16
    const v20, 0x3d4ccccd    # 0.05f

    .line 17
    .local v20, "minimum_threasold_percentage":F
    const v19, 0x3ecccccd    # 0.4f

    .line 18
    .local v19, "maximum_threasold_percentage":F
    const v22, 0x3ba3d70a    # 0.005f

    .line 19
    .local v22, "minimum_threasold_percentage_for_doubl_grayColor":F
    const v21, 0x3d4ccccd    # 0.05f

    .line 21
    .local v21, "minimum_threasold_percentage_for_colorswap":F
    invoke-static/range {p1 .. p1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v5

    .line 22
    .local v5, "dominantoColorResult":[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;FF)[I

    move-result-object v6

    .line 23
    .local v6, "gradientColorIndices":[I
    const/16 v23, 0x0

    aget v23, v6, v23

    const/16 v24, 0x1

    aget v24, v6, v24

    const/16 v25, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v22

    invoke-static {v5, v0, v1, v2, v3}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)[I

    move-result-object v6

    .line 26
    const/16 v23, 0x0

    aget v23, v6, v23

    aget-object v23, v5, v23

    move-object/from16 v0, v23

    iget v8, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 27
    .local v8, "gradientColor_a":I
    const/16 v23, 0x1

    aget v23, v6, v23

    aget-object v23, v5, v23

    move-object/from16 v0, v23

    iget v11, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 28
    .local v11, "gradientColor_b":I
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v13, v0, [F

    .line 29
    .local v13, "hsv_a":[F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 30
    .local v16, "hsv_b":[F
    invoke-static {v8, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 31
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 33
    sget v23, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v24, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v13, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v17

    .line 34
    .local v17, "isGrayscale_a":Z
    sget v23, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v24, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v18

    .line 38
    .local v18, "isGrayscale_b":Z
    const/4 v4, 0x0

    .line 39
    .local v4, "bColorSwap":Z
    if-eqz v17, :cond_2

    if-nez v18, :cond_2

    .line 40
    const/4 v4, 0x1

    .line 50
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    .line 51
    const/16 v23, 0x0

    aget v12, v6, v23

    .line 52
    .local v12, "gradientIndexBuf":I
    const/16 v23, 0x0

    const/16 v24, 0x1

    aget v24, v6, v24

    aput v24, v6, v23

    .line 53
    const/16 v23, 0x1

    aput v12, v6, v23

    .line 54
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v16, v24

    aput v24, v14, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v16, v24

    aput v24, v14, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    aget v24, v16, v24

    aput v24, v14, v23

    .line 55
    .local v14, "hsv_adjusted_a":[F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v15, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    aput v24, v15, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    aput v24, v15, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    aget v24, v13, v24

    aput v24, v15, v23

    .line 62
    .end local v12    # "gradientIndexBuf":I
    .local v15, "hsv_adjusted_b":[F
    :goto_1
    invoke-static {v14}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getAdjustedColor_primaryColor([F)[F

    move-result-object v14

    .line 63
    invoke-static {v15}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getAdjustedColor_secondaryColor([F)[F

    move-result-object v15

    .line 65
    if-eqz v17, :cond_1

    if-eqz v18, :cond_1

    .line 66
    const/16 v23, 0x2

    const v24, 0x3f666666    # 0.9f

    aput v24, v14, v23

    .line 67
    const/16 v23, 0x2

    const/high16 v24, 0x3f400000    # 0.75f

    aput v24, v15, v23

    .line 69
    :cond_1
    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    .line 70
    .local v9, "gradientColor_adjusted_a":I
    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 75
    .local v10, "gradientColor_adjusted_b":I
    new-instance v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    invoke-direct {v7}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;-><init>()V

    .line 76
    .local v7, "gradientColorResult":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    iput-object v5, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .line 77
    iput-object v6, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColorIndexForDominantColor:[I

    .line 78
    iput v8, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a_original:I

    .line 79
    iput v11, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b_original:I

    .line 81
    iput v9, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    .line 82
    iput v10, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    .line 83
    if-eqz v17, :cond_5

    if-eqz v18, :cond_5

    .line 84
    const/16 v23, 0xb2

    const/16 v24, 0xf4

    const/16 v25, 0xf9

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    .line 88
    :goto_2
    iget v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->secondaryColor:I

    .line 90
    return-object v7

    .line 41
    .end local v7    # "gradientColorResult":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .end local v9    # "gradientColor_adjusted_a":I
    .end local v10    # "gradientColor_adjusted_b":I
    .end local v14    # "hsv_adjusted_a":[F
    .end local v15    # "hsv_adjusted_b":[F
    :cond_2
    if-eqz v17, :cond_3

    if-nez v18, :cond_0

    .line 42
    :cond_3
    const/16 v23, 0x2

    aget v23, v13, v23

    const/16 v24, 0x2

    aget v24, v16, v24

    cmpg-float v23, v23, v24

    if-gez v23, :cond_0

    const/16 v23, 0x1

    aget v23, v6, v23

    aget-object v23, v5, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    move/from16 v23, v0

    cmpl-float v23, v23, v21

    if-ltz v23, :cond_0

    .line 43
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 57
    :cond_4
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v14, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v13, v24

    aput v24, v14, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v13, v24

    aput v24, v14, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    aget v24, v13, v24

    aput v24, v14, v23

    .line 58
    .restart local v14    # "hsv_adjusted_a":[F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v15, v0, [F

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v16, v24

    aput v24, v15, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v16, v24

    aput v24, v15, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    aget v24, v16, v24

    aput v24, v15, v23

    .restart local v15    # "hsv_adjusted_b":[F
    goto/16 :goto_1

    .line 86
    .restart local v7    # "gradientColorResult":Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .restart local v9    # "gradientColor_adjusted_a":I
    .restart local v10    # "gradientColor_adjusted_b":I
    :cond_5
    iget v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    goto :goto_2
.end method
