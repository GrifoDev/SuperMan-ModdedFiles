.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$SurfaceImage;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageReader;)I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/ImageReader;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    return v0
.end method

.method static synthetic -get3(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/ImageReader;)I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p1, "i"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 891
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 56
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I

    .prologue
    const/4 v6, 0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 623
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 629
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 131
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    .line 132
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    .line 133
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    .line 134
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 136
    if-lt p1, v6, :cond_0

    if-ge p2, v6, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string/jumbo v1, "The image dimensions must be positive"

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    if-ge v0, v6, :cond_2

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 142
    const-string/jumbo v1, "Maximum outstanding image count must be at least 1"

    .line 141
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    const/16 v0, 0x11

    if-ne p3, v0, :cond_3

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    const-string/jumbo v1, "NV21 format is not supported"

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    .line 152
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    .line 154
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 156
    iput-boolean v6, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 163
    invoke-static {p1, p2, p3, v6}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 165
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 130
    return-void
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 332
    iget-object v2, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "status":I
    :try_start_0
    iget-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v1, :cond_0

    .line 336
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v0

    .line 339
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 346
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 341
    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 351
    :pswitch_1
    if-nez v0, :cond_1

    .line 352
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    .line 354
    return v0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v1, 0x0

    .line 584
    instance-of v2, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v2, :cond_0

    .line 585
    return v1

    :cond_0
    move-object v0, p1

    .line 587
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 588
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .prologue
    .line 124
    new-instance v0, Landroid/media/ImageReader;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/ImageReader;-><init>(IIII)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    move-object v2, p0

    .line 599
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 600
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 601
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_0

    .line 602
    return-void

    .line 606
    :cond_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v3

    .line 609
    if-eqz v0, :cond_1

    .line 610
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 597
    :cond_1
    return-void

    .line 606
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    .prologue
    .line 411
    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 413
    const-string/jumbo v2, "This image was not produced by an ImageReader"

    .line 412
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 415
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 416
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_1

    .line 417
    return-void

    .line 420
    :cond_1
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-wrap0(Landroid/media/ImageReader$SurfaceImage;)V

    .line 426
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 427
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 428
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 410
    return-void

    .line 421
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 422
    const-string/jumbo v2, "This image was not produced by this ImageReader"

    .line 421
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 284
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_1

    .line 285
    return-object v3

    .line 295
    .local v1, "next":Landroid/media/Image;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 296
    move-object v0, v1

    .line 289
    .end local v1    # "next":Landroid/media/Image;
    :cond_1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 290
    .restart local v1    # "next":Landroid/media/Image;
    if-nez v1, :cond_0

    .line 291
    move-object v2, v0

    .line 292
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 293
    .local v0, "image":Landroid/media/Image;
    return-object v2

    .line 298
    .end local v1    # "next":Landroid/media/Image;
    .end local v2    # "result":Landroid/media/Image;
    .local v0, "image":Landroid/media/Image;
    :catchall_0
    move-exception v3

    .line 299
    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 298
    :cond_2
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7

    .prologue
    .line 389
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v2, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 390
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 392
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 394
    :pswitch_0
    return-object v0

    .line 396
    :pswitch_1
    const/4 v2, 0x0

    return-object v2

    .line 398
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 400
    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    .line 399
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 401
    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 399
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .line 314
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    return-object v0

    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 497
    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 507
    :cond_0
    iget-object v3, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 509
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 510
    .local v0, "image":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 507
    .end local v0    # "image":Landroid/media/Image;
    .end local v1    # "image$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 512
    .restart local v1    # "image$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 514
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 517
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_2

    .line 518
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 519
    iput v4, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 495
    :cond_2
    return-void
.end method

.method detachImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "input image must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 572
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 573
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 575
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    .line 580
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-wrap1(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 563
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 524
    return-void

    .line 527
    :catchall_0
    move-exception v0

    .line 528
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 527
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 444
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    if-eqz p1, :cond_4

    .line 446
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 447
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 449
    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    .line 448
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 446
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 451
    :cond_1
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 452
    :cond_2
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 454
    :cond_3
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    .line 443
    return-void

    .line 456
    :cond_4
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 457
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
