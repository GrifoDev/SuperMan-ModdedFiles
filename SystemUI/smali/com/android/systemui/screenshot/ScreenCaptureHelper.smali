.class public Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "ScreenCaptureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mCaptureDisplay:I

.field protected mCaptureOrigin:I

.field protected mCaptureType:I

.field protected mDegrees:F

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mHelperContext:Landroid/content/Context;

.field protected mRectToCapture:Landroid/graphics/Rect;

.field protected mScreenHeight:I

.field protected mScreenNativeHeight:F

.field protected mScreenNativeWidth:F

.field protected mScreenWidth:I

.field protected mSweepDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationWindowFlag()I
    .locals 1

    const/16 v0, 0x500

    return v0
.end method

.method public getAnimationWindowType()I
    .locals 1

    const/16 v0, 0x968

    return v0
.end method

.method protected getDegrees(Landroid/view/Display;)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegreesForRotation(I)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegreesForRotation(I)F

    move-result v0

    return v0
.end method

.method protected getDegreesForRotation(I)F
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    return v0
.end method

.method public getScreenCaptureOrigin()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    return v0
.end method

.method public getScreenDegrees()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    return v0
.end method

.method public getScreenNativeHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    return v0
.end method

.method public getScreenNativeWidth()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    return v0
.end method

.method public getScreenshotMaxLayer()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getScreenshotMaxLayerInKnoxDesktop()I
    .locals 1

    const v0, 0x4baef

    return v0
.end method

.method public getScreenshotMinLayer()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initiallize(Landroid/content/Context;Landroid/view/Display;III)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    iput p4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    iput p5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallizeScreenshotVariable(Landroid/view/Display;)V

    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiallize() mCaptureType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSweepDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCaptureDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCaptureOrigin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initiallize(Landroid/content/Context;Landroid/view/Display;IIILandroid/os/Bundle;)V
    .locals 0

    iput-object p6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;Landroid/view/Display;III)V

    return-void
.end method

.method protected initiallizeScreenshotVariable(Landroid/view/Display;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegrees(Landroid/view/Display;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x2

    new-array v0, v3, [F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    aput v3, v0, v5

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    aput v3, v0, v6

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    neg-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v5

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v6

    aget v3, v0, v5

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    aget v3, v0, v6

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    return-void
.end method

.method public onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method
