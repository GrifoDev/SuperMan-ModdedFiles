.class Lcom/android/systemui/egg/MLand$Pop;
.super Lcom/android/systemui/egg/MLand$Obstacle;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pop"
.end annotation


# instance fields
.field antenna:Landroid/graphics/drawable/Drawable;

.field cx:I

.field cy:I

.field eyes:Landroid/graphics/drawable/Drawable;

.field mRotate:I

.field mouth:Landroid/graphics/drawable/Drawable;

.field r:I

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Pop;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/MLand$Obstacle;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    const v0, 0x7f02031b

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Pop;->setBackgroundResource(I)V

    sget-object v0, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->pick([I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->antenna:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/egg/MLand;->EYES:[I

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->pick([I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->eyes:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->pick([I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->mouth:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v0, Lcom/android/systemui/egg/MLand$Pop$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Pop$1;-><init>(Lcom/android/systemui/egg/MLand$Pop;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Pop;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public intersects(Lcom/android/systemui/egg/MLand$Player;)Z
    .locals 8

    iget-object v4, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v4, v4

    div-int/lit8 v0, v4, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    float-to-int v2, v4

    iget-object v4, p1, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/android/systemui/egg/MLand$Pop;->cx:I

    sub-int v4, v2, v4

    int-to-double v4, v4

    iget v6, p0, Lcom/android/systemui/egg/MLand$Pop;->cy:I

    sub-int v6, v3, v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/android/systemui/egg/MLand$Pop;->r:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/egg/MLand$Obstacle;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->antenna:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->antenna:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->antenna:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->eyes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->eyes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->eyes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->mouth:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->mouth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->mouth:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public step(JJFF)V
    .locals 3

    invoke-super/range {p0 .. p6}, Lcom/android/systemui/egg/MLand$Obstacle;->step(JJFF)V

    iget v0, p0, Lcom/android/systemui/egg/MLand$Pop;->mRotate:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Pop;->getRotation()F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v1, p6

    iget v2, p0, Lcom/android/systemui/egg/MLand$Pop;->mRotate:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Pop;->setRotation(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/egg/MLand$Pop;->cx:I

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Pop;->hitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/egg/MLand$Pop;->cy:I

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Pop;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/egg/MLand$Pop;->r:I

    return-void
.end method
