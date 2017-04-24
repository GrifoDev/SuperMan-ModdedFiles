.class public Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

.field private mLastBottom:I

.field private mLastRight:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mShouldEnableScreenRotation:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method private checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z
    .locals 22

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [Z

    fill-array-data v9, :array_0

    if-nez p1, :cond_0

    return-object v9

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x3

    :try_start_0
    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v6, p2

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    :goto_0
    if-gtz v12, :cond_1

    const/4 v12, 0x1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v12

    goto :goto_2

    :cond_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_0

    :cond_3
    add-int v17, v17, v12

    goto :goto_1

    :cond_4
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_STATUS_BAR sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x3e4ccccd    # 0.2f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_5

    const v19, 0x3f733333    # 0.95f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_5

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-boolean v19, v9, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_3
    if-eqz p3, :cond_a

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x3

    :try_start_1
    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v19, v6, p2

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    sub-int v19, v6, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    :goto_4
    if-gtz v12, :cond_6

    const/4 v12, 0x1

    :cond_6
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    move/from16 v18, p2

    :goto_6
    move/from16 v0, v18

    if-ge v0, v6, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v12

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_4

    :cond_8
    add-int v17, v17, v12

    goto :goto_5

    :cond_9
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_BODY sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x3e99999a    # 0.3f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_a

    const v19, 0x3f6147ae    # 0.88f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_a

    const/16 v19, 0x1

    const/16 v20, 0x1

    aput-boolean v19, v9, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_7
    return-object v9

    :catch_0
    move-exception v5

    goto :goto_7

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    return-object v9

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    div-int/lit8 v9, v8, 0x2

    int-to-float v0, v9

    div-int/lit8 v9, v3, 0x2

    int-to-float v1, v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    :goto_0
    iput v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3

    const/4 v6, 0x0

    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_5

    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_4
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    goto :goto_0

    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    :cond_6
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_7
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_9

    :cond_8
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_9
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-static {v4}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v4, v3}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private init()Z
    .locals 9

    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "init()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mCache == null || mCache.isRecycled()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-ne v3, v4, :cond_2

    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_5

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    :goto_0
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->invalidate()V

    const/4 v3, 0x1

    return v3

    :cond_5
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    goto :goto_0
.end method

.method private setMDMFileObserver(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "observing path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private updateVignettingEffect(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-direct {v3, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p1, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->resetBlendedFilter(Landroid/view/View;)V

    goto :goto_2
.end method

.method private updateWallpaper()V
    .locals 5

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 23

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isMDMWallpaperEnabled()Z

    move-result v21

    if-eqz v21, :cond_7

    const-string/jumbo v18, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v21

    if-eqz v21, :cond_1

    :try_start_0
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "load MDM wallpaper!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    return-object v21

    :catch_0
    move-exception v5

    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "Can\'t load MDM wallpaper!"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "file problem!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p2, :cond_8

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_9

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    :cond_2
    :goto_3
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [Z

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v19

    sget-boolean v21, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    if-eqz v21, :cond_c

    move/from16 v20, v9

    :goto_4
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    if-eqz v20, :cond_4

    :cond_3
    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4, v11}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z

    move-result-object v12

    :cond_4
    const/16 v21, 0x0

    aget-boolean v21, v12, v21

    move/from16 v0, v21

    if-eq v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v22

    const/16 v21, 0x0

    aget-boolean v21, v12, v21

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_5
    const/16 v21, 0x1

    aget-boolean v21, v12, v21

    move/from16 v0, v21

    if-eq v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v22

    const/16 v21, 0x1

    aget-boolean v21, v12, v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_6
    if-eqz v16, :cond_10

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v21

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/FileObserver;->stopWatching()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    goto/16 :goto_0

    :cond_8
    move/from16 v10, p1

    goto/16 :goto_1

    :cond_9
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_2

    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v16, v3

    goto/16 :goto_3

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_e
    const/16 v21, 0x0

    goto :goto_6

    :cond_f
    const/16 v21, 0x0

    goto :goto_7

    :cond_10
    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v21

    :catch_1
    move-exception v6

    :try_start_3
    const-string/jumbo v21, "KeyguardImageWallpaper"

    const-string/jumbo v22, "Can\'t decode file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v21

    :catchall_0
    move-exception v21

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mCache == null || mCache.isRecycled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_6
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->update()V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method
