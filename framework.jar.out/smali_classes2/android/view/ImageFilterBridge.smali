.class Landroid/view/ImageFilterBridge;
.super Ljava/lang/Object;
.source "ImageFilterBridge.java"


# instance fields
.field private mHwuiBridge:Landroid/view/HwuiBridge;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    .line 24
    new-instance v0, Landroid/view/HwuiBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/HwuiBridge;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    .line 25
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/ImageFilterBridge;->nInitHwuiBridge(J)V

    .line 23
    return-void
.end method

.method private static native nAddImageFilterClipRect(JJIIIIF)V
.end method

.method private static native nClearImageFilterClipRects(JJ)V
.end method

.method private static native nClearImageFilters(JJ)V
.end method

.method private static native nInitHwuiBridge(J)V
.end method

.method private static native nSetImageFilter(JJJI)V
.end method

.method private processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 9
    .param p1, "filter"    # Lcom/samsung/android/graphics/SemImageFilter;

    .prologue
    .line 46
    if-eqz p1, :cond_1

    .line 47
    instance-of v0, p1, Lcom/samsung/android/graphics/SemImageFilterSet;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 48
    nop

    nop

    .line 49
    .local v7, "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 50
    invoke-virtual {v7, v8}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ImageFilterBridge;->processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 49
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 53
    .end local v7    # "filterSet":Lcom/samsung/android/graphics/SemImageFilterSet;
    .end local v8    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter;->getNativeImageFilter()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/ImageFilterBridge;->nSetImageFilter(JJJI)V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method addImageFilterClipRect(IIIIF)V
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "radius"    # F

    .prologue
    .line 38
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Landroid/view/ImageFilterBridge;->nAddImageFilterClipRect(JJIIIIF)V

    .line 37
    return-void
.end method

.method clearImageFilterClipRects()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ImageFilterBridge;->nClearImageFilterClipRects(JJ)V

    .line 33
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0, p1}, Landroid/view/HwuiBridge;->draw(Landroid/graphics/Canvas;)V

    .line 41
    return-void
.end method

.method setImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 4
    .param p1, "filter"    # Lcom/samsung/android/graphics/SemImageFilter;

    .prologue
    .line 29
    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ImageFilterBridge;->nClearImageFilters(JJ)V

    .line 30
    invoke-direct {p0, p1}, Landroid/view/ImageFilterBridge;->processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    .line 28
    return-void
.end method
