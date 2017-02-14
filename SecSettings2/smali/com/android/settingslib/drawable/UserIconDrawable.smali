.class public Lcom/android/settingslib/drawable/UserIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UserIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeMargin:F

.field private mBadgeRadius:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mDisplayRadius:F

.field private mFrameColor:Landroid/content/res/ColorStateList;

.field private mFramePadding:F

.field private mFramePaint:Landroid/graphics/Paint;

.field private mFrameWidth:F

.field private final mIconMatrix:Landroid/graphics/Matrix;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mIntrinsicRadius:F

.field private mInvalidated:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:I

.field private mTintColor:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    iput v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    iput-boolean v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-lez p1, :cond_0

    invoke-virtual {p0, v2, v2, p1, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIntrinsicSize(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    return-void
.end method

.method public static getSizeForList(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->circle_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private rebake()V
    .locals 14

    const v13, 0x3a83126f    # 0.001f

    const/4 v11, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    iput-boolean v11, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v11, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getState()[I

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    add-float/2addr v7, v8

    cmpl-float v7, v7, v13

    if-lez v7, :cond_4

    iget v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    mul-float/2addr v8, v12

    sub-float v5, v7, v8

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    iget-object v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    cmpl-float v7, v7, v13

    if-lez v7, :cond_5

    iget v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v0, v7, v8

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float v2, v7, v0

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v1, v7, v0

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    float-to-int v8, v1

    float-to-int v9, v2

    add-float v10, v1, v0

    float-to-int v10, v10

    add-float v11, v2, v0

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeMargin:F

    add-float v3, v7, v8

    iget v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    add-float/2addr v7, v1

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    add-float/2addr v8, v2

    iget-object v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    iget v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    iget-object v10, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bake()Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Baking requires an explicit intrinsic size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->rebake()V

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->rebake()V

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float v4, v8, v12

    mul-float v8, v4, v10

    float-to-int v6, v8

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-eq v6, v8, :cond_4

    :cond_2
    iput v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    iput v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    sub-float v3, v8, v9

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    sub-float/2addr v8, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    sub-float/2addr v9, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    add-float/2addr v10, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    add-float/2addr v11, v3

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    iput v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    return-void

    :cond_6
    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v1, v8, v12

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v2, v8, v12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    sub-float v8, v1, v8

    iget v9, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    sub-float v9, v2, v9

    iget v10, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    add-float/2addr v10, v1

    iget v11, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    add-float/2addr v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v8, v7, v0, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settingslib/drawable/UserIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setIntrinsicSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
