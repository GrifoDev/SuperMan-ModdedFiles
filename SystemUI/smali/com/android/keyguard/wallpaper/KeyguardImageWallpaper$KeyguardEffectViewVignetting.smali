.class public Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardEffectViewVignetting"
.end annotation


# instance fields
.field private mBottomDimAlpha:I

.field private mDefaultColor:I

.field private mTopDimAlpha:I

.field private mVignettingBottomRatio:F

.field private mVignettingTopRatio:F

.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 2

    const/16 v1, 0x6e

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4d

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    const v0, 0x3def9db2    # 0.117f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "init() isTabletDevice is ture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    const v0, 0x3e0f5c29    # 0.14f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    :cond_0
    return-void
.end method

.method private calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAlphaValue(I)I
    .locals 1

    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "getCenterCropRect()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "left and rigth are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7, v9, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v7, "KeyguardEffectViewVignetting"

    const-string/jumbo v8, "top and bottom are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v9, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 40

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
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_0
    if-gtz v28, :cond_0

    const/16 v28, 0x1

    :cond_0
    const/16 v36, 0x0

    :goto_1
    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_9

    if-eqz v36, :cond_1

    if-nez v37, :cond_3

    :cond_1
    :goto_3
    add-int v37, v37, v28

    goto :goto_2

    :cond_2
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x42c80000    # 100.0f

    div-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

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

    if-gtz v38, :cond_4

    const-wide/16 v38, 0x0

    cmp-long v38, v24, v38

    if-nez v38, :cond_5

    :cond_4
    move-wide/from16 v24, v10

    :cond_5
    cmp-long v38, v22, v8

    if-gtz v38, :cond_6

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-nez v38, :cond_7

    :cond_6
    move-wide/from16 v22, v8

    :cond_7
    cmp-long v38, v20, v6

    if-gtz v38, :cond_8

    const-wide/16 v38, 0x0

    cmp-long v38, v20, v38

    if-nez v38, :cond_1

    :cond_8
    move-wide/from16 v20, v6

    goto :goto_3

    :cond_9
    add-int v36, v36, v28

    goto :goto_1

    :cond_a
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

    if-lez v38, :cond_f

    int-to-long v0, v14

    move-wide/from16 v38, v0

    sub-long v38, v38, v24

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v14

    move/from16 v39, v0

    div-float v19, v38, v39

    const/high16 v38, 0x3e800000    # 0.25f

    cmpl-float v38, v19, v38

    if-lez v38, :cond_b

    const/high16 v19, 0x3e800000    # 0.25f

    :cond_b
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_e

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

    if-lez v38, :cond_11

    int-to-long v0, v13

    move-wide/from16 v38, v0

    sub-long v38, v38, v22

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v13

    move/from16 v39, v0

    div-float v19, v38, v39

    const/high16 v38, 0x3e800000    # 0.25f

    cmpl-float v38, v19, v38

    if-lez v38, :cond_c

    const/high16 v19, 0x3e800000    # 0.25f

    :cond_c
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_10

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

    if-lez v38, :cond_13

    int-to-long v0, v12

    move-wide/from16 v38, v0

    sub-long v38, v38, v20

    move-wide/from16 v0, v38

    long-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v12

    move/from16 v39, v0

    div-float v19, v38, v39

    const/high16 v38, 0x3e800000    # 0.25f

    cmpl-float v38, v19, v38

    if-lez v38, :cond_d

    const/high16 v19, 0x3e800000    # 0.25f

    :cond_d
    const/16 v38, 0x0

    cmpl-float v38, v19, v38

    if-lez v38, :cond_12

    const/high16 v38, 0x3f800000    # 1.0f

    sub-float v38, v38, v19

    int-to-float v0, v12

    move/from16 v39, v0

    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v15, v0

    :goto_6
    const/16 v38, 0xc8

    move/from16 v0, v17

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    const/16 v38, 0xc8

    move/from16 v0, v16

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    const/16 v38, 0xc8

    move/from16 v0, v38

    if-le v15, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v38, v0

    return v38

    :cond_e
    move/from16 v17, v14

    goto/16 :goto_4

    :cond_f
    move/from16 v17, v14

    goto/16 :goto_4

    :cond_10
    move/from16 v16, v13

    goto :goto_5

    :cond_11
    move/from16 v16, v13

    goto :goto_5

    :cond_12
    move v15, v12

    goto :goto_6

    :cond_13
    move v15, v12

    goto :goto_6

    :cond_14
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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v38, v0

    return v38
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 13

    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    const-string/jumbo v2, "applyBlendedFilter()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget v1, v1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget v2, v2, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v9

    new-instance v11, Lcom/samsung/android/graphics/SemImageFilterSet;

    invoke-direct {v11}, Lcom/samsung/android/graphics/SemImageFilterSet;-><init>()V

    const/16 v1, 0x34

    invoke-static {v1}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const/16 v1, 0x34

    invoke-static {v1}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v12

    if-nez v12, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, v12}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extractedColor of top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mTopDimAlpha:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingTopRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v4, 0x14

    const/16 v6, 0x14

    invoke-static {v1, v2, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v9, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v12

    if-nez v12, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, v12}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    const-string/jumbo v1, "KeyguardEffectViewVignetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extractedColor of bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    shr-int/lit8 v1, v10, 0x10

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc8

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v5, 0x14

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    :goto_0
    invoke-virtual {v11, v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    invoke-virtual {v11, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->addFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p2, v11}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void

    :cond_4
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mBottomDimAlpha:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iget v6, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->mVignettingBottomRatio:F

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public resetBlendedFilter(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardEffectViewVignetting"

    const-string/jumbo v1, "resetBlendedFilter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void
.end method
