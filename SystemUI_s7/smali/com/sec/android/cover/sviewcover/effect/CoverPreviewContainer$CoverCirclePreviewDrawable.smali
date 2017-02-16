.class Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CoverPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverCirclePreviewDrawable"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isShaderReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setPreViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method public setPreviewRect(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
