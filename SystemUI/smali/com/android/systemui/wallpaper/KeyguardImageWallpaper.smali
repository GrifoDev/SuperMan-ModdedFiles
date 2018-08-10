.class public Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mLastBottom:I

.field private mLastRight:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mSelectedUser:Landroid/os/UserHandle;

.field private mShouldEnableScreenRotation:Z

.field private mUpdateWallpaperSequence:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p1, :cond_3

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkDeviceDensity deviceHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " deviceWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " deviceRotation="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bitmapWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " bitmapHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v10, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    :goto_0
    if-nez v6, :cond_1

    const/4 v10, 0x1

    if-eq v3, v10, :cond_0

    const/4 v10, 0x3

    if-ne v3, v10, :cond_1

    :cond_0
    iget v2, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_1
    const/4 v9, 0x0

    if-ge v4, v1, :cond_3

    if-ge v2, v0, :cond_3

    int-to-float v10, v4

    int-to-float v11, v1

    div-float/2addr v10, v11

    int-to-float v11, v2

    int-to-float v12, v0

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resize scale down.:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v8

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    return-object p1
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

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v9, v10

    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v1, v9, v10

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    :goto_0
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCroppedScaled(F)V

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mMetricsHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mMetricsWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

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
    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "widthOrigin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "heightOrigin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "centerX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "centerY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    goto/16 :goto_0

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
    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

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

    invoke-static {v4, v3, v3}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

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

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mCache == null || mCache.isRecycled()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-ne v3, v4, :cond_2

    iput v8, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput v8, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    :goto_0
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBitmapWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBitmapHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mViewWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mViewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->invalidate()V

    const/4 v3, 0x1

    return v3

    :cond_5
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    goto/16 :goto_0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
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
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private updateWallpaper()V
    .locals 5

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->cleanUp()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 14

    const/4 v5, 0x0

    const-class v12, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v12}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v11, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_2

    :try_start_0
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v10, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "load MDM wallpaper!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    const/4 v13, 0x0

    invoke-interface {v12, v9, v13}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_0
    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    return-object v12

    :catch_0
    move-exception v3

    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "Can\'t load MDM wallpaper!"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "file problem!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz p2, :cond_6

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    :goto_1
    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v12, v7}, Landroid/app/WallpaperManager;->getLockWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V

    if-eqz v5, :cond_7

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_2
    iget-boolean v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    if-nez v12, :cond_3

    invoke-direct {p0, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v1

    :cond_3
    if-eqz v9, :cond_9

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    const/4 v13, 0x1

    invoke-interface {v12, v9, v13}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_4
    invoke-static {v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :cond_5
    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v12}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0

    :cond_6
    move v7, p1

    goto :goto_1

    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_8

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;I)I

    move-result v2

    iget-object v12, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2

    :cond_8
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setOperatorWallpaper(Z)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_3
    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "Can\'t decode file"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :cond_9
    :try_start_4
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :catchall_0
    move-exception v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mCache == null || mCache.isRecycled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->postInvalidateDelayed(J)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

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

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->init()Z

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    :cond_1
    return-void
.end method

.method public update()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->update()V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

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

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method
