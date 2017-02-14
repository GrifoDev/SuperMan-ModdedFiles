.class public Lcom/android/launcher2/MovieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MovieDrawable.java"


# static fields
.field private static final MAX_CYCLE_TIMES:I = 0x3


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCurrentCycle:I

.field private mHeight:I

.field private final mMovie:Landroid/graphics/Movie;

.field private mNewFrame:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRelTime:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Movie;II)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    new-instance v0, Lcom/android/launcher2/MovieDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MovieDrawable$1;-><init>(Lcom/android/launcher2/MovieDrawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    iput p2, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    iput p3, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/MovieDrawable;->updateBitmap()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MovieDrawable;)Landroid/graphics/Movie;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MovieDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MovieDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/launcher2/MovieDrawable;)I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MovieDrawable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MovieDrawable;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/MovieDrawable;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MovieDrawable;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/MovieDrawable;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/launcher2/MovieDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/MovieDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mRelTime:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/MovieDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mRelTime:I

    return p1
.end method

.method private updateBitmap()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v1, v7

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->height()I

    move-result v7

    int-to-float v2, v7

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->width()I

    move-result v7

    int-to-float v3, v7

    div-float v4, v0, v2

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    mul-float v7, v3, v4

    sub-float v7, v1, v7

    div-float/2addr v7, v8

    div-float v5, v7, v4

    mul-float v7, v2, v4

    sub-float v7, v0, v7

    div-float/2addr v7, v8

    div-float v6, v7, v4

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    iget-object v8, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v8, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    invoke-direct {p0}, Lcom/android/launcher2/MovieDrawable;->updateBitmap()V

    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/MovieDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MovieDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/MovieDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method
