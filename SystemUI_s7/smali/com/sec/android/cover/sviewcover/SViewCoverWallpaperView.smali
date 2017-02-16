.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWallpaperView.java"


# static fields
.field static COLOR_LIMIT_RATIO:F

.field static DEFAULT_BLENDING_ALPHA:F

.field static WHITE_IMAGE_DEFAULT_COLOR:I

.field static WHITE_IMAGE_THRESHOLD:I


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mBlendingColor:I

.field private mCurWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x6e

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;)I
    .locals 40

    if-nez p0, :cond_0

    const/16 v38, 0x0

    return v38

    :cond_0
    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_0
    if-gtz v28, :cond_1

    const/16 v28, 0x1

    :cond_1
    const/16 v36, 0x0

    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    const/16 v37, 0x0

    :goto_2
    move/from16 v0, v37

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    if-eqz v36, :cond_2

    if-nez v37, :cond_4

    :cond_2
    :goto_3
    add-int v37, v37, v28

    goto :goto_2

    :cond_3
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v10, v0

    add-long v34, v34, v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v8, v0

    add-long v32, v32, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v38

    move/from16 v0, v38

    int-to-long v6, v0

    add-long v30, v30, v6

    const-wide/16 v38, 0x1

    add-long v26, v26, v38

    cmp-long v38, v24, v10

    if-gtz v38, :cond_5

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_6

    :cond_5
    move-wide/from16 v24, v10

    :cond_6
    cmp-long v38, v22, v8

    if-gtz v38, :cond_7

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_8

    :cond_7
    move-wide/from16 v22, v8

    :cond_8
    cmp-long v38, v20, v6

    if-gtz v38, :cond_9

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_2

    :cond_9
    move-wide/from16 v20, v6

    goto :goto_3

    :cond_a
    add-int v36, v36, v28

    goto :goto_1

    :cond_b
    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    div-long v38, v34, v26

    move-wide/from16 v0, v38

    long-to-int v14, v0

    div-long v38, v32, v26

    move-wide/from16 v0, v38

    long-to-int v13, v0

    div-long v38, v30, v26

    move-wide/from16 v0, v38

    long-to-int v12, v0

    const/16 v19, 0x0

    int-to-long v0, v14

    move-wide/from16 v38, v0

    cmp-long v38, v38, v24

    if-lez v38, :cond_10

    int-to-long v0, v14

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v14

    move/from16 v39, v0

    div-float v19, v38, v39

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_c

    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_c
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_f

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v14

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v17, v0

    :goto_4
    int-to-long v0, v13

    move-wide/from16 v38, v0

    cmp-long v38, v38, v22

    if-lez v38, :cond_12

    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v13

    move/from16 v39, v0

    div-float v19, v38, v39

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_d

    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_d
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_11

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v13

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v16, v0

    :goto_5
    int-to-long v0, v12

    move-wide/from16 v38, v0

    cmp-long v38, v38, v20

    if-lez v38, :cond_14

    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v12

    move/from16 v39, v0

    div-float v19, v38, v39

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v38, v19, v38

    if-lez v38, :cond_e

    sget v19, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    :cond_e
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_13

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v12

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v15, v0

    :goto_6
    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v17

    move/from16 v1, v38

    if-le v0, v1, :cond_15

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v38

    if-le v0, v1, :cond_15

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v38

    if-le v15, v0, :cond_15

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    return v38

    :cond_f
    move/from16 v17, v14

    goto :goto_4

    :cond_10
    move/from16 v17, v14

    goto :goto_4

    :cond_11
    move/from16 v16, v13

    goto :goto_5

    :cond_12
    move/from16 v16, v13

    goto :goto_5

    :cond_13
    move v15, v12

    goto :goto_6

    :cond_14
    move v15, v12

    goto :goto_6

    :cond_15
    const/16 v38, 0xff

    move/from16 v0, v38

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    return v38

    :catch_0
    move-exception v5

    const-string/jumbo v38, "SViewCoverWallpaperView"

    const-string/jumbo v39, "Exception in getDominentColor"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v38, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    return v38
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x3

    :try_start_0
    new-array v2, v12, [F

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v9, v1, :cond_1

    int-to-float v12, v1

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-int v5, v12

    :goto_0
    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v1, :cond_2

    invoke-virtual {p0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    invoke-static {v12, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v12, 0x1

    aget v12, v2, v12

    add-float/2addr v6, v12

    const/4 v12, 0x2

    aget v12, v2, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v7, v12

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v11, v5

    goto :goto_2

    :cond_1
    int-to-float v12, v9

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v12, v13

    float-to-int v5, v12

    goto :goto_0

    :cond_2
    add-int/2addr v10, v5

    goto :goto_1

    :cond_3
    int-to-float v12, v3

    div-float v4, v6, v12

    int-to-float v12, v3

    div-float v8, v7, v12

    const v12, 0x3cf5c28f    # 0.03f

    cmpg-float v12, v4, v12

    if-gez v12, :cond_4

    const v12, 0x3f6147ae    # 0.88f

    cmpl-float v12, v8, v12

    if-ltz v12, :cond_4

    const/4 v12, 0x1

    return v12

    :catch_0
    move-exception v0

    const-string/jumbo v12, "SViewCoverWallpaperView"

    const-string/jumbo v13, "Exception in isWhiteCoverWallpaper"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const/4 v12, 0x0

    return v12
.end method

.method private setUserWallpaperImage()V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v3, "SViewCoverWallpaperView"

    const-string/jumbo v5, "setUserWallpaperImage"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "white_cover_wallpaper"

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public setAlphaBlending()V
    .locals 14

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/16 v12, 0x6e

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v9, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v9}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    const/16 v3, 0x34

    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const/16 v3, 0x34

    invoke-static {v3}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v11, v3

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v10, v3

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v7, v3

    div-float/2addr v11, v13

    div-float/2addr v10, v13

    div-float/2addr v7, v13

    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    invoke-virtual {v8, v11, v10, v7, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setColor(FFFF)V

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_0

    const/16 v3, 0x73

    invoke-static {v3, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_0
    invoke-virtual {v9, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void

    :cond_0
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v12, 0x73

    invoke-static {v12, v3, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13, v4, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public setEmergencyModeWallpaperImage(Z)V
    .locals 4

    const/4 v3, 0x4

    const-string/jumbo v0, "SViewCoverWallpaperView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmergencyModeWallpaperImage : Use emergency mode wallpaper - Current wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v0, v3, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_1
    return-void
.end method

.method public setKidsModeWallpaperImage(Z)V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x0

    const-string/jumbo v4, "SViewCoverWallpaperView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKidsModeWallpaperImage : Use kids mode wallpaper - Current wallpaper type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v4, v8, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "white_cover_wallpaper"

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    :cond_2
    iput v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SViewCoverWallpaperView"

    const-string/jumbo v6, "IOException InputStream is null "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public setProperWallpaper(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setEmergencyModeWallpaperImage(Z)V

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setAlphaBlending()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setKidsModeWallpaperImage(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setUserWallpaperImage()V

    const/4 v1, 0x1

    goto :goto_0
.end method
