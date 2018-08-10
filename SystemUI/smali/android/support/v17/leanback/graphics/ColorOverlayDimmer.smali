.class public final Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
.super Ljava/lang/Object;
.source "ColorOverlayDimmer.java"


# instance fields
.field private final mActiveLevel:F

.field private mAlpha:I

.field private mAlphaFloat:F

.field private final mDimmedLevel:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(IFF)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-float v0, p2, v3

    if-lez v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    cmpl-float v0, p3, v3

    if-lez v0, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    cmpg-float v0, p3, v1

    if-gez v0, :cond_3

    const/4 p3, 0x0

    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iput p3, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;
    .locals 9

    const/4 v8, 0x1

    sget-object v4, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimMaskColor:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$color;->lb_view_dim_mask_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v4, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimActiveLevel:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$fraction;->lb_view_active_level:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    invoke-virtual {v0, v4, v8, v8, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    sget v4, Landroid/support/v17/leanback/R$styleable;->LeanbackTheme_overlayDimDimmedLevel:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$fraction;->lb_view_dimmed_level:I

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    invoke-virtual {v0, v4, v8, v8, v5}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-direct {v4, v2, v1, v3}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;-><init>(IFF)V

    return-object v4
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setActiveLevel(F)V
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mActiveLevel:F

    iget v2, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mDimmedLevel:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    iget v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlphaFloat:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
