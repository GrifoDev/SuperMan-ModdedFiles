.class public Lcom/android/incallui/util/BlendedFilterUtils;
.super Ljava/lang/Object;
.source "BlendedFilterUtils.java"


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

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v1}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v3

    return v3
.end method

.method public static calculateColorTop(Landroid/graphics/Bitmap;)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v1}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v3

    return v3
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

    move-result-object v9

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
    .locals 45

    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v36

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v27, v0

    :goto_0
    if-gtz v27, :cond_0

    const/16 v27, 0x1

    :cond_0
    const/16 v37, 0x0

    :goto_1
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v10, v0

    add-long v34, v34, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v8, v0

    add-long v32, v32, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v6, v0

    add-long v30, v30, v6

    const-wide/16 v40, 0x1

    add-long v28, v28, v40

    cmp-long v39, v24, v10

    if-gtz v39, :cond_1

    const-wide/16 v40, 0x0

    cmp-long v39, v24, v40

    if-nez v39, :cond_2

    :cond_1
    move-wide/from16 v24, v10

    :cond_2
    cmp-long v39, v22, v8

    if-gtz v39, :cond_3

    const-wide/16 v40, 0x0

    cmp-long v39, v22, v40

    if-nez v39, :cond_4

    :cond_3
    move-wide/from16 v22, v8

    :cond_4
    cmp-long v39, v20, v6

    if-gtz v39, :cond_5

    const-wide/16 v40, 0x0

    cmp-long v39, v20, v40

    if-nez v39, :cond_6

    :cond_5
    move-wide/from16 v20, v6

    :cond_6
    add-int v38, v38, v27

    goto :goto_2

    :cond_7
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v27, v0

    goto :goto_0

    :cond_8
    add-int v37, v37, v27

    goto :goto_1

    :cond_9
    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    div-long v40, v34, v28

    move-wide/from16 v0, v40

    long-to-int v13, v0

    div-long v40, v32, v28

    move-wide/from16 v0, v40

    long-to-int v12, v0

    div-long v40, v30, v28

    move-wide/from16 v0, v40

    long-to-int v5, v0

    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v39, v40, v24

    if-lez v39, :cond_b

    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v24

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v39, v17, 0x2

    sub-int v14, v13, v39

    :goto_3
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v39, v40, v22

    if-lez v39, :cond_c

    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v39, v17, 0x2

    sub-int v16, v12, v39

    :goto_4
    int-to-long v0, v5

    move-wide/from16 v40, v0

    cmp-long v39, v40, v20

    if-lez v39, :cond_d

    int-to-long v0, v5

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v39, v17, 0x2

    sub-int v15, v5, v39

    :goto_5
    const/16 v39, 0xff

    move/from16 v0, v39

    move/from16 v1, v16

    invoke-static {v0, v14, v1, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v26

    const/16 v39, 0xff

    const/16 v40, 0xc8

    const/16 v41, 0xc8

    const/16 v42, 0xc8

    invoke-static/range {v39 .. v42}, Landroid/graphics/Color;->argb(IIII)I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    if-le v0, v1, :cond_a

    new-instance v39, Landroid/graphics/Rect;

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    sub-int v43, v43, v44

    invoke-direct/range {v39 .. v43}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/incallui/util/BlendedFilterUtils;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v19

    const/16 v39, 0xff

    const/16 v40, 0xc8

    const/16 v41, 0xc8

    const/16 v42, 0xc8

    invoke-static/range {v39 .. v42}, Landroid/graphics/Color;->argb(IIII)I

    move-result v39

    move/from16 v0, v19

    move/from16 v1, v39

    if-le v0, v1, :cond_e

    const/16 v39, 0xff

    const/16 v40, 0x6e

    const/16 v41, 0x6e

    const/16 v42, 0x6e

    invoke-static/range {v39 .. v42}, Landroid/graphics/Color;->argb(IIII)I

    move-result v26

    :cond_a
    :goto_6
    return v26

    :cond_b
    move v14, v13

    goto/16 :goto_3

    :cond_c
    move/from16 v16, v12

    goto :goto_4

    :cond_d
    move v15, v5

    goto :goto_5

    :cond_e
    const/16 v39, 0xff

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->red(I)I

    move-result v40

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->green(I)I

    move-result v41

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->blue(I)I

    move-result v42

    invoke-static/range {v39 .. v42}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    goto :goto_6

    :catch_0
    move-exception v39

    const/16 v26, 0x0

    goto :goto_6
.end method

.method public static isBitmapWhiteAtTopOrBottom(Landroid/graphics/Bitmap;)Z
    .locals 13

    const-string v2, "isBitmapWhiteAtTopOrBottom"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/android/incallui/util/BlendedFilterUtils;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I

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

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    int-to-float v2, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v2, v3

    float-to-int v11, v2

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    invoke-static {v8}, Lcom/android/incallui/util/BlendedFilterUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-int v9, v2

    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    return v2

    :cond_3
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v12, v2

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v12, v2, :cond_6

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    invoke-static {v8}, Lcom/android/incallui/util/BlendedFilterUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    float-to-int v9, v2

    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
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
    .locals 6

    const/16 v0, 0x64

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    int-to-float v4, v1

    div-float v2, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method
