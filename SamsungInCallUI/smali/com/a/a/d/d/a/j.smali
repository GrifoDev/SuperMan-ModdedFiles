.class public Lcom/a/a/d/d/a/j;
.super Lcom/a/a/d/d/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/a/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/a/a/d/d/a/j$a;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/a/j$a;

    invoke-direct {v0, p2}, Lcom/a/a/d/d/a/j$a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/a/a/d/d/a/j;-><init>(Landroid/content/res/Resources;Lcom/a/a/d/d/a/j$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/a/a/d/d/a/j$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/d/d/b/b;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/a/j;->a:Landroid/graphics/Rect;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    :cond_1
    iput v0, p2, Lcom/a/a/d/d/a/j$a;->b:I

    :goto_0
    iget-object v1, p2, Lcom/a/a/d/d/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v1

    iput v1, p0, Lcom/a/a/d/d/a/j;->b:I

    iget-object v1, p2, Lcom/a/a/d/d/a/j$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/d/d/a/j;->c:I

    return-void

    :cond_2
    iget v0, p2, Lcom/a/a/d/d/a/j$a;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v0, v0, Lcom/a/a/d/d/a/j$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/a/a/d/d/a/j;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    iget v1, p0, Lcom/a/a/d/d/a/j;->b:I

    iget v2, p0, Lcom/a/a/d/d/a/j;->c:I

    invoke-virtual {p0}, Lcom/a/a/d/d/a/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/d/d/a/j;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/d/a/j;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v0, v0, Lcom/a/a/d/d/a/j$a;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/d/d/a/j;->a:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v3, v3, Lcom/a/a/d/d/a/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/a/a/d/d/a/j;->c:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/a/a/d/d/a/j;->b:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v0, v0, Lcom/a/a/d/d/a/j$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v0, v0, Lcom/a/a/d/d/a/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/d/d/a/j;->e:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/a/a/d/d/b/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/a/a/d/d/a/j$a;

    iget-object v1, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    invoke-direct {v0, v1}, Lcom/a/a/d/d/a/j$a;-><init>(Lcom/a/a/d/d/a/j$a;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/d/a/j;->e:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/d/d/b/b;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/d/d/a/j;->d:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    iget-object v0, v0, Lcom/a/a/d/d/a/j$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    invoke-virtual {v0, p1}, Lcom/a/a/d/d/a/j$a;->a(I)V

    invoke-virtual {p0}, Lcom/a/a/d/d/a/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/a/j;->f:Lcom/a/a/d/d/a/j$a;

    invoke-virtual {v0, p1}, Lcom/a/a/d/d/a/j$a;->a(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/a/a/d/d/a/j;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
