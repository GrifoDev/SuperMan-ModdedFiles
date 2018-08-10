.class public Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;
.super Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.source "ScreenCaptureHelperForWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenshotMaxLayer()I
    .locals 6

    const/4 v5, 0x5

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "windowCapture"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mHelperContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getScreenshotMinLayer()I
    .locals 4

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "windowCapture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected initiallizeCaptureType()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mCaptureType:I

    return-void
.end method

.method protected initiallizeScreenshotVariable()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v10}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v10}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDegrees(Landroid/view/Display;)F

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v11, "windowCapture"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v2, -0x1

    const/4 v8, -0x1

    const/4 v3, -0x1

    const/4 v0, -0x1

    if-eqz v9, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v2, v8, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenWidth:I

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenHeight:I

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_2

    move v5, v8

    move v6, v0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v7, v10, v3

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v4, v10, v2

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeWidth:F

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mScreenNativeHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getBuiltInDisplayId()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBuiltInDisplayId:I

    return-void

    :cond_2
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x43870000    # 270.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v5, v10, v0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v6, v10, v8

    move v7, v2

    move v4, v3

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v5, v7, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isShowScreenshotAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
