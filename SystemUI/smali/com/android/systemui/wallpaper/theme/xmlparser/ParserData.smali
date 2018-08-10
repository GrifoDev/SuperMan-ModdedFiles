.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;
.super Ljava/lang/Object;
.source "ParserData.java"


# instance fields
.field private mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field private mApkContext:Landroid/content/Context;

.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

.field private mImageViewHeight:I

.field private mImageViewWidth:I

.field private mIsPreview:Z

.field private mIsScaled:Z

.field private mIsStartTag:Z

.field private mIsWallpaper:Z

.field private mMetricsHeight:I

.field private mMetricsWidth:I

.field private mMobileKeyboardCovered:I

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageWidth:F

.field private mPkgName:Ljava/lang/String;

.field private mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

.field private mScaledDx:F

.field private mScaledDy:F

.field private mScaledRatio:F

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mXpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 6

    const/4 v5, -0x2

    const/high16 v4, 0x44200000    # 640.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageDensity:F

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    iput v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iput p5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewWidth:I

    iput p6, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewHeight:I

    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    iput p8, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMobileKeyboardCovered:I

    iput-object p9, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->init()V

    return-void
.end method

.method private init()V
    .locals 8

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMobileKeyboardCovered:I

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsWidth:I

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mMetricsHeight:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->setRealMetrics(Landroid/content/Context;III)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mViewHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    :goto_0
    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    new-instance v4, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v4}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    new-instance v4, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-direct {v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setComplexAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    goto :goto_0
.end method


# virtual methods
.method public getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    return-object v0
.end method

.method public getApkContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkContext:Landroid/content/Context;

    return-object v0
.end method

.method public getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoordinateX(F)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getCoordinateY(F)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getDeviceDensity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    return v0
.end method

.method public getDeviceHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    return v0
.end method

.method public getDevicePixelX(F)F
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getDevicePixelY(F)F
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getDeviceWidth()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    return v0
.end method

.method public getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    return-object v0
.end method

.method public getImageViewHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    return v0
.end method

.method public getImageViewWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    return v0
.end method

.method public getPackgeHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    return v0
.end method

.method public getPackgeWidth()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    return-object v0
.end method

.method public getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method public getXpp()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsPreview:Z

    return v0
.end method

.method public isScaled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    return v0
.end method

.method public isStartTag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    return v0
.end method

.method public isWallpaperView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    return v0
.end method

.method public setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    return-void
.end method

.method public setComplexAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    return-void
.end method

.method public setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    return-void
.end method

.method public setImageViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    return-void
.end method

.method public setImageViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    return-void
.end method

.method public setPackgeDensity(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageDensity:F

    return-void
.end method

.method public setPackgeHeight(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    return-void
.end method

.method public setPackgeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    return-void
.end method

.method public setScaled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    return-void
.end method

.method public setScaledDx(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    return-void
.end method

.method public setScaledDy(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    return-void
.end method

.method public setScaledRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    return-void
.end method

.method public setStartTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    return-void
.end method

.method public setWallpaperView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    return-void
.end method

.method public setXpp(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method
