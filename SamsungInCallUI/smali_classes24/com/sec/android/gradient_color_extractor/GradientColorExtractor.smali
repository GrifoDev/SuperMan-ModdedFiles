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

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v0, 0x0

    move v1, v0

    move v3, v0

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

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_1
.end method

.method static checkGayScale_with_value([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkSameColor([F[FFFF)Z
    .locals 8

    const/4 v7, 0x2

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v4, p1, v3

    aget v5, p0, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    mul-float v4, p2, v6

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    move v1, v2

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

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    sub-float v4, v6, v0

    mul-float v5, p2, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 10

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget v4, p1, v6

    aget v5, p0, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v4, v1, v9

    if-ltz v4, :cond_0

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float v1, v4, v1

    :cond_0
    div-float/2addr v1, v9

    aget v4, p1, v7

    aget v5, p0, v7

    sub-float v2, v4, v5

    aget v4, p1, v8

    aget v5, p0, v8

    sub-float v0, v4, v5

    aget v4, p2, v6

    mul-float/2addr v1, v4

    aget v4, p2, v7

    mul-float/2addr v2, v4

    aget v4, p2, v8

    mul-float/2addr v0, v4

    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v0, v0

    add-float v3, v4, v5

    return v3
.end method

.method static colorDistance_rgb_sqaure2(II)F
    .locals 7

    const v6, 0x3f666666    # 0.9f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

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

    aget-object v13, p0, p1

    iget v3, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    aget-object v13, p0, p2

    iget v4, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    const/4 v13, 0x3

    new-array v5, v13, [F

    const/4 v13, 0x3

    new-array v6, v13, [F

    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v5, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v10

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v6, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v11

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    const/4 v13, 0x3

    new-array v7, v13, [F

    const/4 v13, 0x3

    new-array v8, v13, [F

    const/4 v12, -0x1

    const/4 v9, 0x0

    :goto_0
    array-length v13, p0

    if-ge v9, v13, :cond_1

    aget-object v13, p0, v9

    iget v1, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v1, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v13, p0, v9

    iget v13, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v13, v13, p4

    if-ltz v13, :cond_1

    sget v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    add-float v13, v13, p3

    sget v14, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    add-float v14, v14, p3

    invoke-static {v7, v13, v14}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    move v12, v9

    :cond_0
    :goto_1
    aget-object v13, p0, v12

    iget v2, v13, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v2, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_1
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    move/from16 p2, v12

    const/4 v0, 0x1

    :cond_2
    :goto_2
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput p1, v13, v14

    const/4 v14, 0x1

    aput p2, v13, v14

    return-object v13

    :cond_3
    const/4 v13, 0x1

    aget v13, v8, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    move v12, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    goto :goto_2
.end method

.method static findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I
    .locals 8

    const/4 v7, 0x0

    const/4 v5, -0x1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-le p1, p2, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    const/4 v6, 0x3

    new-array v1, v6, [F

    move v2, p1

    :goto_1
    if-gt v2, p2, :cond_0

    aget-object v6, p0, v2

    iget v0, v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v7, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static {v1, v6, v7}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v6, p0, v2

    iget v6, v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v6, v6, p4

    if-ltz v6, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    aget-object v6, p0, v2

    iget v6, v6, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v6, v6, p3

    if-ltz v6, :cond_3

    if-ne v3, v5, :cond_3

    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, p0, v2

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    cmpl-float v5, v5, p3

    if-ltz v5, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method static find_2ChromaticGradientColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;FF)[I
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    const v7, 0x3dcccccd    # 0.1f

    aget-object v5, p0, v9

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->percentage:F

    const v6, 0x3f7d70a4    # 0.99f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v9

    const/4 v6, 0x1

    aput v1, v5, v6

    return-object v5

    :cond_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v9, v5, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v4

    if-ne v4, v8, :cond_2

    const/4 v4, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v4, 0x1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v5, v6, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v1

    if-ne v1, v8, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-array v2, v10, [F

    new-array v3, v10, [F

    aget-object v5, p0, v4

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v5, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_4
    aget-object v5, p0, v1

    iget v5, v5, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;->color:I

    invoke-static {v5, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v2, v3, v7, v7, v7}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkSameColor([F[FFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v5, v6, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->findChromaticColorIndexFromDominantColor([Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;IIFF)I

    move-result v0

    if-eq v0, v8, :cond_0

    move v1, v0

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_4

    goto :goto_0
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

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

    invoke-static {v1, p1, p2}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->kMeans_hsv([I[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[II)[Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;
    .locals 20

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v5, v3, [Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$DominantColorResult;

    new-array v1, v3, [I

    new-array v2, v3, [[F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget v16, p1, v6

    aput v16, v1, v6

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    aput-object v16, v2, v6

    aget v16, v1, v6

    aget-object v17, v2, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [[F

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_1

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    aput-object v16, v15, v6

    aget v16, p0, v6

    aget-object v17, v15, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    const/4 v10, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_b

    new-array v14, v3, [Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_2

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    aput-object v16, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_7

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    aget-object v16, v15, v6

    sget v17, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v18, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v8

    const/4 v9, 0x0

    :goto_5
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    aget-object v16, v2, v9

    sget v17, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_s:F

    sget v18, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->mGrayscale_limite_b:F

    invoke-static/range {v16 .. v18}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->checkGayScale_with_value([FFF)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v8, :cond_4

    :cond_3
    if-nez v7, :cond_5

    if-nez v8, :cond_5

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

    cmpg-float v16, v4, v11

    if-gez v16, :cond_5

    move v11, v4

    move v12, v9

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    aget-object v16, v14, v12

    aget v17, p0, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_6
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    array-length v0, v14

    move/from16 v16, v0

    if-lez v16, :cond_8

    aget-object v16, v14, v6

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor;->calculateCenter(Ljava/util/List;)I

    move-result v13

    aput v13, v1, v6

    aget v16, v1, v6

    aget-object v17, v2, v6

    invoke-static/range {v16 .. v17}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v16, p2, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_a

    const/4 v6, 0x0

    :goto_7
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_b

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

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_b
    new-instance v16, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/gradient_color_extractor/GradientColorExtractor$1;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v5

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

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static makeClusterrGroup_preset1(I)[I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    move p0, v1

    :cond_0
    new-array v0, p0, [I

    const/4 v3, -0x1

    aput v3, v0, v8

    const/high16 v3, -0x1000000

    aput v3, v0, v9

    const v3, -0x777778

    aput v3, v0, v10

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
