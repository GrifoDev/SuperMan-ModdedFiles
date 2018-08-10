.class final Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConstantState"
.end annotation


# instance fields
.field final mBitmap:Landroid/graphics/Bitmap;

.field final mMatrix:Landroid/graphics/Matrix;

.field final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;-><init>(Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable$ConstantState;)V

    return-object v0
.end method
