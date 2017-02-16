.class Lcom/android/systemui/egg/MLand$Stem;
.super Lcom/android/systemui/egg/MLand$Obstacle;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stem"
.end annotation


# instance fields
.field id:I

.field mDrawShadow:Z

.field mGradient:Landroid/graphics/drawable/GradientDrawable;

.field mJandystripe:Landroid/graphics/Path;

.field mPaint:Landroid/graphics/Paint;

.field mPaint2:Landroid/graphics/Paint;

.field mShadow:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V
    .locals 5

    const/high16 v4, -0x10000

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/MLand$Obstacle;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Lcom/android/systemui/egg/MLand;->-get2(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    iput-boolean p4, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/high16 v3, 0x22000000

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    const v2, -0x222223

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    const v1, -0x43555c

    const v2, -0x5e7781

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/egg/MLand$Obstacle;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setWillNotDraw(Z)V

    new-instance v0, Lcom/android/systemui/egg/MLand$Stem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Stem$1;-><init>(Lcom/android/systemui/egg/MLand$Stem;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v6, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v4, v1

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v6, v6, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    mul-int/lit8 v4, v1, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    mul-int/lit8 v4, v1, 0x4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->offset(FF)V

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v1

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->-get0()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
