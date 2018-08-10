.class public final Landroid/graphics/BitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionDecoder.java"


# instance fields
.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method private static native nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(JZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x4000

    new-array v0, v1, [B

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance(Ljava/io/InputStream;[BZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v12, 0x0

    const-string/jumbo v14, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v14, 0x0

    invoke-direct {v3, v14}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v14}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_3

    const-string/jumbo v8, "application/vnd.oma.drm.content"

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v14, 0xa

    invoke-direct {v4, v14, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string/jumbo v14, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v4, v14, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v14, "LENGTH"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v9

    const-string/jumbo v14, "status"

    invoke-virtual {v9, v14}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "BitmapRegionDecoder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "newInstance acquireDrmInfo status is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "success"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v14

    if-eqz v14, :cond_1

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move/from16 v0, p1

    invoke-static {v12, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    const/4 v3, 0x0

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v14, "BitmapRegionDecoder"

    const-string/jumbo v15, "newInstance acquireDrmInfo resultInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v14, "BitmapRegionDecoder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "newInstance FAIL status = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "INFO"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "BitmapRegionDecoder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "newInstance Rights not present. rightStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eqz v13, :cond_5

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    move-object v12, v13

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v12, :cond_6

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_4
    throw v14

    :catch_1
    move-exception v5

    goto :goto_4

    :catchall_1
    move-exception v14

    move-object v12, v13

    goto :goto_3
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->nativeNewInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-static {p2}, Landroid/graphics/BitmapFactory$Options;->validate(Landroid/graphics/BitmapFactory$Options;)V

    iget-object v7, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v0, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

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

    monitor-exit v7

    throw v0

    :cond_1
    :try_start_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/BitmapRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v7

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
    invoke-virtual {p0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
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

    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetHeight(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWidth()I
    .locals 4

    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Landroid/graphics/BitmapRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeGetWidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 4

    iget-object v1, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/graphics/BitmapRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v2, v3}, Landroid/graphics/BitmapRegionDecoder;->nativeClean(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapRegionDecoder;->mRecycled:Z
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
