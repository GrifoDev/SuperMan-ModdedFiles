.class public Lcom/samsung/android/graphics/RegionDecoder;
.super Ljava/lang/Object;
.source "RegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionDecoder"

.field private static final USE_MULTICORE:Z = true


# instance fields
.field private mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mNativeLock:Ljava/lang/Object;

.field private final mNativeLock_decode:Ljava/lang/Object;

.field private mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

.field private mRecycled:Z

.field private secmmrd:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    :try_start_0
    const-string/jumbo v1, "MMCodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 48
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load library fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;[BIIZZ)V
    .locals 4
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "isShareabl"    # Z
    .param p6, "isPreview"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    .line 53
    iput-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 54
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/graphics/RegionDecoder;->nativerdinstance(Ljava/lang/String;[BIIZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/RegionDecoder;->configMultiCore(J)I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    .line 52
    return-void
.end method

.method private static native RequestCancelDecode(J)I
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    return-void
.end method

.method private static native configLTN(J)I
.end method

.method private static native configMultiCore(J)I
.end method

.method private static convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 351
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    .line 353
    .local v3, "result":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 354
    int-to-byte v0, v3

    .line 355
    .local v0, "b":B
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 356
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    goto :goto_0

    .line 358
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method private static native nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeRegionBB(JIIIIILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativerdinstance(Ljava/lang/String;[BIIZZ)J
.end method

.method private static native nativerecycle(J)I
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 191
    return-object v9

    .line 195
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    .line 196
    invoke-static {p0}, Lcom/samsung/android/graphics/RegionDecoder;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 197
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 198
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_1

    .line 206
    return-object v0

    .line 201
    :catch_0
    move-exception v7

    .line 202
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 212
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 213
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v9

    .line 208
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_1
    return-object v9

    .line 211
    :cond_2
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 10
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 144
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 145
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 146
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_0

    .line 154
    return-object v0

    .line 149
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 160
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 161
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v9

    .line 156
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_0
    return-object v9

    .line 159
    :cond_1
    return-object v0
.end method

.method public static newInstance([BIIZ)Lcom/samsung/android/graphics/RegionDecoder;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "isShareable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 237
    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 242
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/RegionDecoder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/graphics/RegionDecoder;-><init>(Ljava/lang/String;[BIIZZ)V

    .line 243
    .local v0, "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    iget-wide v2, v0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 244
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_2

    .line 252
    return-object v0

    .line 247
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 258
    .end local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 259
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RegionDecoder"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-object v9

    .line 254
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "decoder":Lcom/samsung/android/graphics/RegionDecoder;
    :cond_2
    return-object v9

    .line 257
    :cond_3
    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "options"    # Lcom/samsung/android/graphics/Decoder$Options;

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {p2}, Lcom/samsung/android/graphics/Decoder;->getBitmapFactoryOptions(Lcom/samsung/android/graphics/Decoder$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 76
    .local v8, "tile_width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 77
    .local v9, "tile_height":I
    iget v6, p2, Lcom/samsung/android/graphics/Decoder$Options;->inSampleSize:I

    .line 78
    .local v6, "samplesize":I
    if-nez v6, :cond_1

    .line 79
    const/4 v6, 0x1

    .line 81
    :cond_1
    add-int v0, v8, v6

    add-int/lit8 v0, v0, -0x1

    div-int v8, v0, v6

    .line 82
    add-int v0, v9, v6

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v6

    .line 83
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 85
    :cond_2
    const-string/jumbo v0, "RegionDecoder"

    const-string/jumbo v1, "inBitmap Erraneous\n"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 89
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/graphics/RegionDecoder;->nativeDecodeRegion(JIIIIILandroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v11

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .end local v6    # "samplesize":I
    .end local v8    # "tile_width":I
    .end local v9    # "tile_height":I
    :catch_0
    move-exception v10

    .line 94
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "RegionDecoder"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p2, Lcom/samsung/android/graphics/Decoder$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/RegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 337
    return-void

    .line 340
    :catchall_0
    move-exception v0

    .line 341
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 340
    throw v0
.end method

.method public getHeight()I
    .locals 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/RegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 122
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->nativeGetHeight(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/RegionDecoder;->checkRecycled(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeSisoRegionDecoder:Lcom/samsung/android/graphics/RegionDecoder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mBitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 108
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->nativeGetWidth(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 6

    .prologue
    .line 295
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock_decode:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 298
    iget-wide v4, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v4, v5}, Lcom/samsung/android/graphics/RegionDecoder;->nativerecycle(J)I

    .line 299
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 294
    return-void

    .line 296
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestCancelDecode()V
    .locals 4

    .prologue
    .line 313
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    .line 315
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->RequestCancelDecode(J)I

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/RegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 312
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public useRowDecode()I
    .locals 6

    .prologue
    .line 327
    iget-object v1, p0, Lcom/samsung/android/graphics/RegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/RegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 329
    iget-wide v2, p0, Lcom/samsung/android/graphics/RegionDecoder;->secmmrd:J

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/RegionDecoder;->configLTN(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 332
    const/4 v0, 0x0

    return v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
