.class public Lcom/android/launcher2/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field private static final MODE_FIT:I = 0x0

.field private static final MODE_MATRIX:I = 0x1

.field private static sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGhostModeEnabled:Z

.field private mHeight:I

.field private mMode:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/FastBitmapDrawable;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mGhostModeEnabled:Z

    const-string v0, "FastBitmapDrawable Constructor"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mMode:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    iput v2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    iput v2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mMode:I

    iput p2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    iput p3, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    :cond_0
    return-void
.end method

.method private ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NULL bitmap, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycled bitmap bmp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private updateFilter()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/FastBitmapDrawable;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->getGhostMatrixColorFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/FastBitmapDrawable;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/launcher2/FastBitmapDrawable;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "FastBitmapDrawable draw"

    iget-object v2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setGhostModeEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mGhostModeEnabled:Z

    invoke-direct {p0}, Lcom/android/launcher2/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method
