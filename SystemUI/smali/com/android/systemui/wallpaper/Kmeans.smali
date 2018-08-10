.class public Lcom/android/systemui/wallpaper/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;,
        Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    }
.end annotation


# static fields
.field private static DEFAULT_COLOR_NUM:I

.field private static DOMINANTC_COLOR_WEIGHT:[F

.field private static GRAYSCALE_COLOR_WEIGHT:[F

.field public static GRAYSCALE_LIMITE_BRIGHTNESS:F

.field public static GRAYSCALE_LIMITE_SATURATION:F

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x3df5c28f    # 0.12f

    const/4 v1, 0x3

    const-string/jumbo v0, "Kmeans"

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->TAG:Ljava/lang/String;

    sput v2, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_SATURATION:F

    sput v2, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_BRIGHTNESS:F

    sput v1, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCenter(Ljava/util/List;)I
    .locals 8
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

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v4, v5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v1, v6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    div-int v7, v0, v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    return v5
.end method

.method public static checkGayScale_with_value([F)Z
    .locals 3

    const/4 v2, 0x1

    aget v0, p0, v2

    sget v1, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_SATURATION:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    aget v0, p0, v0

    sget v1, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_BRIGHTNESS:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
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

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 23

    const/4 v12, 0x1

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v5, v3, [Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;

    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v6, v0, [Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    new-array v1, v3, [I

    new-array v2, v3, [[F

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    aget v20, p1, v7

    aput v20, v1, v7

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    aput-object v20, v2, v7

    aget v20, v1, v7

    aget-object v21, v2, v7

    invoke-static/range {v20 .. v21}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [[F

    move-object/from16 v19, v0

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_1

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    aput-object v20, v19, v7

    aget v20, p0, v7

    aget-object v21, v19, v7

    invoke-static/range {v20 .. v21}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-array v10, v3, [Z

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_2

    aget-object v20, v2, v7

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v20

    aput-boolean v20, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v14, v0, :cond_b

    new-array v0, v3, [Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_3

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    aput-object v20, v18, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v16, 0x0

    aget-object v20, v19, v7

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v11

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v3, :cond_6

    aget-boolean v9, v10, v13

    const/4 v4, 0x0

    if-nez v9, :cond_5

    xor-int/lit8 v20, v11, 0x1

    if-eqz v20, :cond_5

    aget-object v20, v19, v7

    aget-object v21, v2, v13

    sget-object v22, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    invoke-static/range {v20 .. v22}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v20, v4, v15

    if-gez v20, :cond_4

    move v15, v4

    move/from16 v16, v13

    :cond_4
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_5
    if-eqz v9, :cond_4

    if-eqz v11, :cond_4

    aget-object v20, v19, v7

    aget-object v21, v2, v13

    sget-object v22, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    invoke-static/range {v20 .. v22}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v4

    cmpg-float v20, v4, v15

    if-gez v20, :cond_4

    move v15, v4

    move/from16 v16, v13

    goto :goto_7

    :cond_6
    aget-object v20, v18, v16

    aget v21, p0, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v3, :cond_9

    const/16 v17, 0x0

    aget-object v20, v18, v7

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_8

    aget-object v20, v18, v7

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/wallpaper/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v17

    :cond_8
    aput v17, v1, v7

    aget v20, v1, v7

    aget-object v21, v2, v7

    invoke-static/range {v20 .. v21}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    div-float v8, v21, v20

    const/4 v7, 0x0

    :goto_9
    array-length v0, v2

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_b

    new-instance v20, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    aget-object v21, v2, v7

    aget-object v22, v18, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v8

    invoke-direct/range {v20 .. v22}, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;-><init>([FF)V

    aput-object v20, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_b
    new-instance v20, Lcom/android/systemui/wallpaper/Kmeans$1;

    invoke-direct/range {v20 .. v20}, Lcom/android/systemui/wallpaper/Kmeans$1;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public static makeClusterGroup_preset1(I)[I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    sget v3, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    if-ge p0, v3, :cond_0

    sget p0, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    :cond_0
    new-array v0, p0, [I

    const/4 v3, -0x1

    aput v3, v0, v7

    const/high16 v3, -0x1000000

    aput v3, v0, v8

    const v3, -0x777778

    aput v3, v0, v9

    sget v2, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    :goto_0
    if-ge v2, p0, :cond_1

    const/4 v3, 0x3

    new-array v1, v3, [F

    sget v3, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    sget v4, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    sub-int v4, p0, v4

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v4, v5, v4

    mul-float/2addr v3, v4

    aput v3, v1, v7

    aput v6, v1, v8

    aput v6, v1, v9

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
