.class public Lcom/android/settingslib/drawable/CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedDrawable.java"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mScale:F

    iget v3, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    mul-float v0, v2, v3

    iget v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/drawable/CircleFramedDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
