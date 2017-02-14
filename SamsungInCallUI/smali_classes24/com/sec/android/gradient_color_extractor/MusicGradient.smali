.class public Lcom/sec/android/gradient_color_extractor/MusicGradient;
.super Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.source "MusicGradient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;-><init>()V

    return-void
.end method

.method public static getAdjustedColor_primaryColor([F)[F
    .locals 12

    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x3

    new-array v3, v5, [F

    aget v5, p0, v6

    aput v5, v3, v6

    aget v5, p0, v9

    aput v5, v3, v9

    aget v5, p0, v8

    aput v5, v3, v8

    sget v5, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    invoke-static {v3, v5, v6}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f59999a    # 0.85f

    aget v5, v3, v9

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    aput v5, v3, v9

    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    aget v5, v3, v8

    add-float/2addr v5, v4

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    :goto_0
    return-object v3

    :cond_0
    const v4, 0x3dcccccd    # 0.1f

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

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

    aput v0, v3, v8

    goto :goto_0
.end method

.method public static getAdjustedColor_secondaryColor([F)[F
    .locals 10

    const/4 v6, 0x0

    const/high16 v9, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x3

    new-array v3, v5, [F

    aget v5, p0, v6

    aput v5, v3, v6

    aget v5, p0, v7

    aput v5, v3, v7

    aget v5, p0, v8

    aput v5, v3, v8

    sget v5, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    invoke-static {v3, v5, v6}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f59999a    # 0.85f

    aget v5, v3, v7

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v6

    aput v5, v3, v7

    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aget v7, v3, v8

    add-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v3, v8

    aput v9, v3, v8

    :goto_0
    return-object v3

    :cond_0
    const v4, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3f800000    # 1.0f

    aget v5, v3, v8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v9, v3, v8

    goto :goto_0
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    move-result-object v2

    return-object v2
.end method

.method public static getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;
    .locals 26

    const v20, 0x3d4ccccd    # 0.05f

    const v19, 0x3ecccccd    # 0.4f

    const v22, 0x3ba3d70a    # 0.005f

    const v21, 0x3d4ccccd    # 0.05f

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->makeClusterrGroup_preset1(I)[I

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v5

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;FF)[I

    move-result-object v6

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

    const/16 v23, 0x0

    aget v23, v6, v23

    aget-object v23, v5, v23

    move-object/from16 v0, v23

    iget v8, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    const/16 v23, 0x1

    aget v23, v6, v23

    aget-object v23, v5, v23

    move-object/from16 v0, v23

    iget v11, v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v13, v0, [F

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v16, v0

    invoke-static {v8, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v23, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v24, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v13, v0, v1}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v17

    sget v23, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_s:F

    sget v24, Lcom/sec/android/gradient_color_extractor/MusicGradient;->mGrayscale_limite_b:F

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->checkGayScale_with_value([FFF)Z

    move-result v18

    const/4 v4, 0x0

    if-eqz v17, :cond_2

    if-nez v18, :cond_2

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    const/16 v23, 0x0

    aget v12, v6, v23

    const/16 v23, 0x0

    const/16 v24, 0x1

    aget v24, v6, v24

    aput v24, v6, v23

    const/16 v23, 0x1

    aput v12, v6, v23

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

    :goto_1
    invoke-static {v14}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getAdjustedColor_primaryColor([F)[F

    move-result-object v14

    invoke-static {v15}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getAdjustedColor_secondaryColor([F)[F

    move-result-object v15

    if-eqz v17, :cond_1

    if-eqz v18, :cond_1

    const/16 v23, 0x2

    const v24, 0x3f666666    # 0.9f

    aput v24, v14, v23

    const/16 v23, 0x2

    const/high16 v24, 0x3f400000    # 0.75f

    aput v24, v15, v23

    :cond_1
    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    new-instance v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;

    invoke-direct {v7}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;-><init>()V

    iput-object v5, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->dominantColorResult:[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    iput-object v6, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColorIndexForDominantColor:[I

    iput v8, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a_original:I

    iput v11, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b_original:I

    iput v9, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    iput v10, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    if-eqz v17, :cond_5

    if-eqz v18, :cond_5

    const/16 v23, 0xb2

    const/16 v24, 0xf4

    const/16 v25, 0xf9

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    :goto_2
    iget v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_b:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->secondaryColor:I

    return-object v7

    :cond_2
    if-eqz v17, :cond_3

    if-nez v18, :cond_0

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

    const/4 v4, 0x1

    goto/16 :goto_0

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

    goto/16 :goto_1

    :cond_5
    iget v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->gradientColor_a:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;->primaryColor:I

    goto :goto_2
.end method
