.class public Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;
.super Ljava/lang/Object;
.source "GradientColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$GradientColorResult;,
        Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    }
.end annotation


# static fields
.field static mGrayscale_limite_b:F

.field static mGrayscale_limite_s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    .line 19
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static calculateCenter(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "bSum":I
    move v1, v0

    .local v1, "gSum":I
    move v3, v0

    .line 183
    .local v3, "rSum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, "i":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 185
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 186
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 187
    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const/4 v4, 0x0

    .line 191
    :goto_1
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    .line 193
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    .line 191
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_1
.end method

.method static checkGayScale_with_value([FFF)Z
    .locals 2
    .param p0, "hsv"    # [F
    .param p1, "offsetValue_s"    # F
    .param p2, "offsetValue_b"    # F

    .prologue
    const/4 v0, 0x1

    .line 372
    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkSameColor([F[FFFF)Z
    .locals 8
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "range_h"    # F
    .param p3, "range_s"    # F
    .param p4, "range_b"    # F

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    aget v4, p1, v3

    aget v5, p0, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 382
    .local v0, "hue_diff":F
    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 383
    mul-float v4, p2, v6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    move v1, v2

    .line 387
    .local v1, "isHueSame":Z
    :goto_0
    if-eqz v1, :cond_3

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p3

    if-gez v4, :cond_3

    aget v4, p0, v7

    aget v5, p1, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p4

    if-gez v4, :cond_3

    .line 390
    :goto_1
    return v2

    .end local v1    # "isHueSame":Z
    :cond_0
    move v1, v3

    .line 383
    goto :goto_0

    .line 385
    :cond_1
    sub-float v4, v6, v0

    mul-float v5, p2, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    .restart local v1    # "isHueSame":Z
    :goto_2
    goto :goto_0

    .end local v1    # "isHueSame":Z
    :cond_2
    move v1, v3

    goto :goto_2

    .restart local v1    # "isHueSame":Z
    :cond_3
    move v2, v3

    .line 390
    goto :goto_1
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 10
    .param p0, "hsv_a"    # [F
    .param p1, "hsv_b"    # [F
    .param p2, "hsv_weight"    # [F

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    aget v4, p1, v6

    aget v5, p0, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 82
    .local v1, "diff_h":F
    cmpl-float v4, v1, v9

    if-ltz v4, :cond_0

    .line 83
    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v1, v4, v1

    .line 85
    :cond_0
    div-float/2addr v1, v9

    .line 87
    aget v4, p1, v7

    aget v5, p0, v7

    sub-float v2, v4, v5

    .line 88
    .local v2, "diff_s":F
    aget v4, p1, v8

    aget v5, p0, v8

    sub-float v0, v4, v5

    .line 90
    .local v0, "diff_b":F
    aget v4, p2, v6

    mul-float/2addr v1, v4

    .line 91
    aget v4, p2, v7

    mul-float/2addr v2, v4

    .line 92
    aget v4, p2, v8

    mul-float/2addr v0, v4

    .line 94
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float v3, v4, v5

    .line 96
    .local v3, "hsvDistance_square2":F
    return v3
.end method

.method static colorDistance_rgb_sqaure2(II)F
    .locals 7
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .prologue
    const v6, 0x3f666666    # 0.9f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 100
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v6

    const v1, 0x3f99999a    # 1.2f

    .line 101
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 102
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    return v0
.end method

.method static findChromaticColorIndexForDoubleGrayColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)[I
    .locals 15
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .param p1, "gradientIndex_a"    # I
    .param p2, "gradientIndex_b"    # I
    .param p3, "grayScaleCheckingVal"    # F
    .param p4, "minimum_threasold_percentage_for_doubl_grayColor"    # F

    .prologue
    .line 258
    aget-object v13, p0, p1

    iget v3, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 259
    .local v3, "gradientColor_a":I
    aget-object v13, p0, p2

    iget v4, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 261
    .local v4, "gradientColor_b":I
    const/4 v13, 0x3

    new-array v5, v13, [F

    .line 262
    .local v5, "hsv_a":[F
    const/4 v13, 0x3

    new-array v6, v13, [F

    .line 263
    .local v6, "hsv_b":[F
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 264
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 266
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v5, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v10

    .line 267
    .local v10, "isColorAGrayScale":Z
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v6, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v11

    .line 268
    .local v11, "isColorBGrayScale":Z
    const/4 v0, 0x0

    .line 269
    .local v0, "bColorSwap":Z
    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 270
    const/4 v13, 0x3

    new-array v7, v13, [F

    .line 271
    .local v7, "hsv_current":[F
    const/4 v13, 0x3

    new-array v8, v13, [F

    .line 272
    .local v8, "hsv_target":[F
    const/4 v12, -0x1

    .line 273
    .local v12, "mostSatuationColorIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v13, p0

    if-ge v9, v13, :cond_1

    .line 274
    aget-object v13, p0, v9

    iget v1, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 275
    .local v1, "color_current":I
    invoke-static {v1, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 276
    aget-object v13, p0, v9

    iget v13, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v13, v13, p4

    if-ltz v13, :cond_1

    .line 277
    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v7, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v13

    if-nez v13, :cond_4

    .line 278
    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    .line 279
    move v12, v9

    .line 285
    :cond_0
    :goto_1
    aget-object v13, p0, v12

    iget v2, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 286
    .local v2, "color_target":I
    invoke-static {v2, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 294
    .end local v1    # "color_current":I
    .end local v2    # "color_target":I
    :cond_1
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 295
    move/from16 p2, v12

    .line 296
    const/4 v0, 0x1

    .line 304
    .end local v7    # "hsv_current":[F
    .end local v8    # "hsv_target":[F
    .end local v9    # "i":I
    .end local v12    # "mostSatuationColorIndex":I
    :cond_2
    :goto_2
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 305
    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 313
    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput p1, v13, v14

    const/4 v14, 0x1

    aput p2, v13, v14

    return-object v13

    .line 281
    .restart local v1    # "color_current":I
    .restart local v7    # "hsv_current":[F
    .restart local v8    # "hsv_target":[F
    .restart local v9    # "i":I
    .restart local v12    # "mostSatuationColorIndex":I
    :cond_3
    const/4 v13, 0x1

    aget v13, v8, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 282
    move v12, v9

    goto :goto_1

    .line 273
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "color_current":I
    .end local v7    # "hsv_current":[F
    .end local v8    # "hsv_target":[F
    .end local v9    # "i":I
    .end local v12    # "mostSatuationColorIndex":I
    :cond_5
    if-eqz v10, :cond_2

    .line 300
    const/4 v0, 0x1

    goto :goto_2
.end method

.method static findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I
    .locals 7
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "minimum_threasold_percentage"    # F
    .param p4, "maximum_threasold_percentage"    # F

    .prologue
    const/4 v6, 0x0

    .line 318
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 319
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 320
    if-le p1, p2, :cond_1

    .line 321
    const/4 v3, -0x1

    .line 350
    :cond_0
    :goto_0
    return v3

    .line 324
    :cond_1
    const/4 v3, -0x1

    .line 325
    .local v3, "index":I
    const/4 v5, 0x3

    new-array v1, v5, [F

    .line 326
    .local v1, "dominantColor_hsv":[F
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-gt v2, p2, :cond_0

    .line 327
    aget-object v5, p0, v2

    iget v0, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    .line 328
    .local v0, "dominantColor":I
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 329
    sget v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static {v1, v5, v6}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v4

    .line 330
    .local v4, "isDominantColorGrayScale":Z
    if-eqz v4, :cond_4

    .line 331
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p4

    if-ltz v5, :cond_2

    .line 332
    move v3, v2

    .line 333
    goto :goto_0

    .line 334
    :cond_2
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_3

    .line 326
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :cond_4
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_0

    .line 343
    move v3, v2

    .line 344
    goto :goto_0
.end method

.method static find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;FF)[I
    .locals 13
    .param p0, "dominantoColorResult"    # [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .param p1, "minimum_threasold_percentage"    # F
    .param p2, "maximum_threasold_percentage"    # F

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    const v9, 0x3dcccccd    # 0.1f

    .line 200
    aget-object v7, p0, v11

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    const v8, 0x3f7d70a4    # 0.99f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, "startColorIndex":I
    const/4 v1, 0x0

    .line 253
    .local v1, "endColorIndex":I
    :goto_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v11

    const/4 v8, 0x1

    aput v1, v7, v8

    return-object v7

    .line 204
    .end local v1    # "endColorIndex":I
    .end local v6    # "startColorIndex":I
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p0, v11, v7, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v6

    .line 205
    .restart local v6    # "startColorIndex":I
    if-ne v6, v10, :cond_1

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v1, 0x0

    .restart local v1    # "endColorIndex":I
    goto :goto_0

    .line 209
    .end local v1    # "endColorIndex":I
    :cond_1
    add-int/lit8 v2, v6, 0x1

    .line 210
    .local v2, "endColorIndex_2nd_priority":I
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_2

    .line 211
    const/4 v2, 0x0

    .line 212
    :cond_2
    add-int/lit8 v7, v6, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v1

    .line 213
    .restart local v1    # "endColorIndex":I
    if-ne v1, v10, :cond_3

    .line 214
    move v1, v2

    goto :goto_0

    .line 216
    :cond_3
    new-array v3, v12, [F

    .line 217
    .local v3, "hsv_a":[F
    new-array v4, v12, [F

    .line 218
    .local v4, "hsv_b":[F
    aget-object v7, p0, v6

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 219
    move v5, v1

    .line 221
    .local v5, "resellected_endcolor_index":I
    :cond_4
    aget-object v7, p0, v5

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v7, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 222
    invoke-static {v3, v4, v9, v9, v9}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkSameColor([F[FFFF)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 223
    add-int/lit8 v7, v5, 0x1

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v0

    .line 227
    .local v0, "AnotherEndColorIndex":I
    if-ne v0, v10, :cond_6

    .line 246
    .end local v0    # "AnotherEndColorIndex":I
    :cond_5
    :goto_1
    move v1, v5

    goto :goto_0

    .line 230
    .restart local v0    # "AnotherEndColorIndex":I
    :cond_6
    move v5, v0

    .line 239
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v5, v7, :cond_4

    goto :goto_1
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "clusterGroups"    # [I
    .param p2, "iterationNum"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 66
    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 67
    invoke-static {v1, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->kMeans_hsv([I[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .locals 20
    .param p0, "pixels"    # [I
    .param p1, "clusterGroups"    # [I
    .param p2, "iterationNum"    # I

    .prologue
    .line 107
    move-object/from16 v0, p1

    array-length v3, v0

    .line 108
    .local v3, "clusterNum":I
    new-array v5, v3, [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    .line 110
    .local v5, "dominantColorResults":[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    new-array v1, v3, [I

    .line 111
    .local v1, "clusterGroups_copied":[I
    new-array v2, v3, [[F

    .line 113
    .local v2, "clusterGroups_hsv_copied":[[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 114
    aget v16, p1, v6

    aput v16, v1, v6

    .line 115
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    aput-object v16, v2, v6

    .line 116
    aget v16, v1, v6

    aget-object v17, v2, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [[F

    .line 121
    .local v15, "pixels_hsv":[[F
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_1

    .line 122
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    aput-object v16, v15, v6

    .line 123
    aget v16, p0, v6

    aget-object v17, v15, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 127
    :cond_1
    const/4 v14, 0x0

    .line 128
    .local v14, "newClusters":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_b

    .line 130
    new-array v14, v3, [Ljava/util/ArrayList;

    .line 131
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_2

    .line 132
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    aput-object v16, v14, v6

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 134
    :cond_2
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_7

    .line 135
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 136
    .local v11, "minDist":F
    const/4 v12, 0x0

    .line 137
    .local v12, "minId":I
    aget-object v16, v15, v6

    sget v17, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v18, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v8

    .line 138
    .local v8, "isPixelColorGray":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 139
    aget-object v16, v2, v9

    sget v17, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v18, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v7

    .line 140
    .local v7, "isClusterColorGray":Z
    if-eqz v7, :cond_3

    if-nez v8, :cond_4

    :cond_3
    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 141
    :cond_4
    aget-object v16, v15, v6

    aget-object v17, v2, v9

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    .line 143
    .local v4, "dist":F
    cmpg-float v16, v4, v11

    if-gez v16, :cond_5

    .line 144
    move v11, v4

    .line 145
    move v12, v9

    .line 138
    .end local v4    # "dist":F
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 149
    .end local v7    # "isClusterColorGray":Z
    :cond_6
    aget-object v16, v14, v12

    aget v17, p0, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 153
    .end local v8    # "isPixelColorGray":Z
    .end local v9    # "j":I
    .end local v11    # "minDist":F
    .end local v12    # "minId":I
    :cond_7
    const/4 v6, 0x0

    :goto_6
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    .line 155
    array-length v0, v14

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 156
    aget-object v16, v14, v6

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->calculateCenter(Ljava/util/List;)I

    move-result v13

    .line 158
    .local v13, "newCenter":I
    aput v13, v1, v6

    .line 159
    aget v16, v1, v6

    aget-object v17, v2, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 153
    .end local v13    # "newCenter":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 163
    :cond_9
    add-int/lit8 v16, p2, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_a

    .line 165
    const/4 v6, 0x0

    :goto_7
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_b

    .line 166
    new-instance v16, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    aget v17, v1, v6

    aget-object v18, v14, v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-direct/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;-><init>(IF)V

    aput-object v16, v5, v6

    .line 165
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 128
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 171
    :cond_b
    new-instance v16, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 177
    return-object v5

    .line 141
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method static linear_interpolation(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 47
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static makeClusterrGroup_preset1(I)[I
    .locals 11
    .param p0, "clusterNum"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 51
    const/4 v1, 0x3

    .line 52
    .local v1, "defaultColorNum":I
    if-ge p0, v1, :cond_0

    .line 53
    move p0, v1

    .line 54
    :cond_0
    new-array v0, p0, [I

    .line 55
    .local v0, "clusterGroups":[I
    const/4 v3, -0x1

    aput v3, v0, v8

    .line 56
    const/high16 v3, -0x1000000

    aput v3, v0, v9

    .line 57
    const v3, -0x777778

    aput v3, v0, v10

    .line 58
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 59
    const/4 v3, 0x3

    new-array v3, v3, [F

    sub-int v4, v2, v1

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-int v6, p0, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v8

    aput v7, v3, v9

    aput v7, v3, v10

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-object v0
.end method
