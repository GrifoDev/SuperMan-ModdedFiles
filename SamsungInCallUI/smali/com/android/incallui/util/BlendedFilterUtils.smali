.class public Lcom/android/incallui/util/BlendedFilterUtils;
.super Ljava/lang/Object;


# static fields
.field private static final HEIGHT_COEFFICIENT:F = 0.3f

.field private static final HEIGHT_PERCENT_ANALYZED:F = 0.2f

.field private static final LUMINANCE_OF_WHITE:F = 0.9f

.field private static final PROPORTION_WHITE_CUTOFF:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "BlededFilterManager"

.field private static final THIRD:F = 0.33f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateColorBottom(Landroid/graphics/Bitmap;)I
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v2}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public static calculateColorTop(Landroid/graphics/Bitmap;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v2}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method private static calculateXyzLuma(I)F
    .locals 3

    const v0, 0x3e59b3d0    # 0.2126f

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f371759    # 0.7152f

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3d93dd98    # 0.0722f

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static generateFilterSet(IIFF)Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 12

    const/16 v11, 0x66

    const/16 v3, 0x34

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v10, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v10}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const-string v3, "BlededFilterManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areaFractionTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", areaFractionBottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v11, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sub-float v5, v2, p2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v8, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v11, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    const-string v1, "BlededFilterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmapFilterTop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bitmapFilterBottom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v10, v9}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    return-object v10
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 30

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v25

    if-le v0, v2, :cond_7

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    :goto_0
    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x0

    move/from16 v24, v3

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-wide/from16 v18, v14

    move-wide/from16 v28, v10

    move-wide v10, v4

    move-wide v4, v6

    move-wide/from16 v6, v16

    move-wide/from16 v16, v28

    :goto_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v14, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-long v14, v14

    add-long v22, v10, v14

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-long v10, v10

    add-long v20, v6, v10

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-long v6, v6

    add-long v18, v18, v6

    const-wide/16 v26, 0x1

    add-long v16, v16, v26

    cmp-long v26, v12, v14

    if-gtz v26, :cond_1

    const-wide/16 v26, 0x0

    cmp-long v26, v12, v26

    if-nez v26, :cond_2

    :cond_1
    move-wide v12, v14

    :cond_2
    cmp-long v14, v8, v10

    if-gtz v14, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    :cond_3
    move-wide v8, v10

    :cond_4
    cmp-long v10, v4, v6

    if-gtz v10, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_6

    :cond_5
    move-wide v4, v6

    :cond_6
    add-int/2addr v3, v2

    move-wide/from16 v6, v20

    move-wide/from16 v10, v22

    goto :goto_2

    :cond_7
    move/from16 v0, v25

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0

    :cond_8
    add-int v3, v24, v2

    move/from16 v24, v3

    move-wide/from16 v14, v18

    move-wide/from16 v28, v16

    move-wide/from16 v16, v6

    move-wide v6, v4

    move-wide v4, v10

    move-wide/from16 v10, v28

    goto :goto_1

    :cond_9
    div-long v2, v4, v10

    long-to-int v4, v2

    div-long v2, v16, v10

    long-to-int v3, v2

    div-long v10, v14, v10

    long-to-int v2, v10

    int-to-long v10, v4

    cmp-long v5, v10, v12

    if-lez v5, :cond_a

    int-to-long v10, v4

    sub-long/2addr v10, v12

    long-to-int v5, v10

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    :cond_a
    int-to-long v10, v3

    cmp-long v5, v10, v8

    if-lez v5, :cond_b

    int-to-long v10, v3

    sub-long v8, v10, v8

    long-to-int v5, v8

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    :cond_b
    int-to-long v8, v2

    cmp-long v5, v8, v6

    if-lez v5, :cond_c

    int-to-long v8, v2

    sub-long v6, v8, v6

    long-to-int v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    :cond_c
    const/16 v5, 0xff

    invoke-static {v5, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v3, 0xff

    const/16 v4, 0xc8

    const/16 v5, 0xc8

    const/16 v6, 0xc8

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    if-le v2, v3, :cond_d

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v2

    const/16 v3, 0xff

    const/16 v4, 0xc8

    const/16 v5, 0xc8

    const/16 v6, 0xc8

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    if-le v2, v3, :cond_e

    const/16 v2, 0xff

    const/16 v3, 0x6e

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    :cond_d
    :goto_3
    return v2

    :cond_e
    const/16 v3, 0xff

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static isBitmapWhiteAtTopOrBottom(Landroid/graphics/Bitmap;)Z
    .locals 13

    const/4 v8, 0x1

    const v11, 0x3dcccccd    # 0.1f

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x0

    const-string v0, "isBitmapWhiteAtTopOrBottom"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/util/BlendedFilterUtils;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v9

    move v3, v9

    :goto_0
    int-to-float v2, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v12, v2

    move v2, v3

    move v3, v12

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    aget v5, v1, v5

    invoke-static {v5}, Lcom/android/incallui/util/BlendedFilterUtils;->isWhite(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    mul-int/2addr v2, v4

    int-to-float v2, v2

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v10

    float-to-int v2, v2

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    cmpl-float v2, v2, v11

    if-lez v2, :cond_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    return v8

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v4, v2

    move v2, v9

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v4, v3, :cond_6

    move v3, v9

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    aget v5, v1, v5

    invoke-static {v5}, Lcom/android/incallui/util/BlendedFilterUtils;->isWhite(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    int-to-float v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_7

    move v0, v8

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    move v8, v0

    goto :goto_2

    :cond_7
    move v0, v9

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private static isWhite(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/incallui/util/BlendedFilterUtils;->calculateXyzLuma(I)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method
