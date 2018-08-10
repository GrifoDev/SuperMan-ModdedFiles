.class public Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field private static final sCachedBrightnessFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sGhostModeMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mGhostModeEnabled:Z

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-string/jumbo v0, "[DS]FastBitmapDrawable"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mGhostModeEnabled:Z

    const-string/jumbo v0, "FastBitmapDrawable Constructor"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mHeight:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method private ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NULL bitmap, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg: "

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

    const-string/jumbo v2, "Recycled bitmap bmp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg: "

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

.method private static setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float v1, v4, v2

    invoke-virtual {p0, v1, v1, v1, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    int-to-float v2, p1

    const/4 v3, 0x4

    aput v2, v0, v3

    int-to-float v2, p1

    const/16 v3, 0x9

    aput v2, v0, v3

    int-to-float v2, p1

    const/16 v3, 0xe

    aput v2, v0, v3

    return-void
.end method

.method private updateFilter()V
    .locals 9

    const/16 v8, 0xff

    const/4 v4, 0x0

    const/high16 v7, 0x43020000    # 130.0f

    const v5, 0x3efafafb

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const v1, 0x3efafafb

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v7, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    aput v7, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v5, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v7, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x10

    aput v6, v3, v4

    const/16 v4, 0x11

    aput v6, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0x13

    aput v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mAlpha:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "FastBitmapDrawable draw"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mAlpha:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setGhostModeEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->mGhostModeEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->updateFilter()V

    :cond_0
    return-void
.end method
