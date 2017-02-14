.class public Lcom/samsung/android/settings/CenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "CenteredImageSpan.java"


# instance fields
.field public fontScale:F

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/CenteredImageSpan;->fontScale:F

    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/CenteredImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/CenteredImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/settings/CenteredImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/settings/CenteredImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v10, v10

    add-float v5, v9, v10

    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v10, v10

    add-float v7, v9, v10

    sub-float v4, v5, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    add-float v6, v7, v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/settings/CenteredImageSpan;->fontScale:F

    mul-float v2, v9, v10

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v8, v6, v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v9, 0x3f000000    # 0.5f

    add-float v9, v9, p5

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget v9, p0, Lcom/samsung/android/settings/CenteredImageSpan;->fontScale:F

    iget v10, p0, Lcom/samsung/android/settings/CenteredImageSpan;->fontScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/CenteredImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/settings/CenteredImageSpan;->fontScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method
