.class public Lcom/android/systemui/stackdivider/MinimizedDockShadow;
.super Landroid/view/View;
.source "MinimizedDockShadow.java"


# instance fields
.field private mDockSide:I

.field private final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    return-void
.end method

.method private updatePaint(IIII)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    iget-object v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v12, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sub-int v4, p4, p2

    int-to-float v4, v4

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    aput v10, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v12, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-int v3, p3, p1

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    aput v10, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mDockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v12, p0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    sub-int v1, p3, p1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v6, 0x2

    aput v10, v5, v6

    const/4 v6, 0x3

    aput v8, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
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
