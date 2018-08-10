.class public Lcom/samsung/android/media/SemHEIFRegionDecoder;
.super Ljava/lang/Object;
.source "SemHEIFRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHEIFRegionDecoder"

.field private static mLibraryLoaded:Z


# instance fields
.field private mHeight:I

.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->loadLibrary()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iput-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static loadLibrary()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "heifregiondec_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemHEIFRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load the native library : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v10, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string/jumbo v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rectangle is outside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_1
    :try_start_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :cond_2
    iput v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v0, v9, v7

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v7

    add-int v0, v8, v7

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v7

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v8, :cond_4

    :cond_3
    const-string/jumbo v0, "SemHEIFRegionDecoder"

    const-string/jumbo v1, "RegionDecode Input Bitmap error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-object v0

    :cond_4
    :try_start_2
    iget-wide v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v10

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetHeight(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWidth()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetWidth(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    iget v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeClean(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
