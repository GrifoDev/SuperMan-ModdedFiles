.class public Lcom/android/server/fingerprint/FingerprintRotationView;
.super Landroid/view/ViewGroup;
.source "FingerprintRotationView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintServiceRotationView"


# instance fields
.field private final childPoint:[F

.field private isRotationChanged:Z

.field private final mRectf1:Landroid/graphics/RectF;

.field private final mRectf2:Landroid/graphics/RectF;

.field private mRotation:I

.field private final parentPoint:[F

.field private final rotateMatrix:Landroid/graphics/Matrix;

.field private final rotateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintRotationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->childPoint:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRectf1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRectf2:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->isRotationChanged:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintRotationView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->childPoint:[F

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->childPoint:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->childPoint:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->parentPoint:[F

    aget v2, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintRotationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->isRotationChanged:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRectf1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRectf2:Landroid/graphics/RectF;

    sub-int v3, p4, p2

    int-to-float v3, v3

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->isRotationChanged:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->rotateRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRotation:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/fingerprint/FingerprintRotationView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/server/fingerprint/FingerprintRotationView;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/server/fingerprint/FingerprintRotationView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintRotationView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/server/fingerprint/FingerprintRotationView;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/server/fingerprint/FingerprintRotationView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintRotationView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 2

    div-int/lit8 v1, p1, 0x5a

    mul-int/lit8 v0, v1, 0x5a

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRotation:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->mRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintRotationView;->isRotationChanged:Z

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintRotationView;->requestLayout()V

    :cond_0
    return-void
.end method
