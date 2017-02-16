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
    .locals 5

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "windowCapture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mHelperContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getScreenshotMinLayer()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "windowCapture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected initiallizeScreenshotVariable(Landroid/view/Display;)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->getDegrees(Landroid/view/Display;)F

    move-result v10

    iput v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v11, "windowCapture"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

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

    if-lez v10, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    move v5, v8

    move v6, v0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v7, v10, v3

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayWidth:I

    sub-int v4, v10, v2

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v8, v7, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
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

    return-void

    :cond_1
    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDegrees:F

    const/high16 v11, 0x43870000    # 270.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v5, v10, v0

    iget v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mDisplayHeight:I

    sub-int v6, v10, v8

    move v7, v2

    move v4, v3

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v10, v5, v2, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
