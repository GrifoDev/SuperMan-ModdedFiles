.class public Lcom/android/systemui/stackdivider/MinimizedDockShadow;
.super Landroid/view/View;
.source "MinimizedDockShadow.java"


# instance fields
.field private mDockSide:I

.field private mMinimizedShadowColor:I

.field private mMinimizedShadowDimen:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    iput v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    return-void
.end method

.method private updatePaint(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMinimizedShadowDimen()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mMinimizedShadowDimen:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDockSide(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getBottom()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->updatePaint(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->invalidate()V

    :cond_0
    return-void
.end method
