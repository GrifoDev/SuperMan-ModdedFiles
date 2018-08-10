.class public Lcom/android/settingslib/RestrictedLockImageSpan;
.super Landroid/text/style/ImageSpan;
.source "RestrictedLockImageSpan.java"


# instance fields
.field private final mExtraPadding:F

.field private final mRestrictedPadlock:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedLockImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mExtraPadding:F

    add-float v1, p5, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p8, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mRestrictedPadlock:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/android/settingslib/RestrictedLockImageSpan;->mExtraPadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    return v0
.end method
