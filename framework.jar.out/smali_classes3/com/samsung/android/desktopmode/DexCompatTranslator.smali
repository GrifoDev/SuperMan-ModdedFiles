.class public Lcom/samsung/android/desktopmode/DexCompatTranslator;
.super Ljava/lang/Object;
.source "DexCompatTranslator.java"


# instance fields
.field private mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

.field private mWindowPosition:Landroid/graphics/Point;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopmode/DexCompatTranslator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    iput-object p1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    return-void
.end method

.method public static getDexCompatTranslator(Lcom/samsung/android/desktopmode/DexCompatTranslator;)Lcom/samsung/android/desktopmode/DexCompatTranslator;
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopmode/DexCompatTranslator;-><init>(Lcom/samsung/android/desktopmode/DexCompatTranslator;)V

    return-object v0
.end method

.method private getWindowPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    return-object v0
.end method


# virtual methods
.method public apply(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public translateToScreen(Landroid/graphics/Point;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->offset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0
.end method

.method public translateToScreen(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0
.end method

.method public translateToScreen(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public translateToScreen(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    goto :goto_0
.end method

.method public translateToWindow(Landroid/graphics/Point;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->offset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0
.end method

.method public translateToWindow(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    goto :goto_0
.end method

.method public translateToWindow(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public translateToWindow(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mParentTranslator:Lcom/samsung/android/desktopmode/DexCompatTranslator;

    invoke-direct {v1}, Lcom/samsung/android/desktopmode/DexCompatTranslator;->getWindowPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/desktopmode/DexCompatTranslator;->mWindowPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setWindowOffset(II)V

    goto :goto_0
.end method
