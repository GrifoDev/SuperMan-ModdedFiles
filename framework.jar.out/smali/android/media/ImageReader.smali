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

.field private static final BUFFER_USAGE_UNKNOWN:J


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

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>(IIIIJ)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    if-lt p1, v8, :cond_0

    if-ge p2, v8, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    if-ge v0, v8, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x11

    if-ne p3, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIIJ)V

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    iput-boolean v8, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    invoke-static {p1, p2, p3, v8}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5

    iget-object v2, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

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

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    :pswitch_1
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static isFormatUsageCombinationAllowed(IJ)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    return v2

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x22

    if-ne p0, v3, :cond_7

    const-wide/16 v2, 0x100

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-wide/32 v2, 0x10000

    cmp-long v1, p1, v2

    if-nez v1, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-wide/32 v2, 0x10100

    cmp-long v1, p1, v2

    if-nez v1, :cond_6

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const-wide/16 v4, 0x2

    cmp-long v3, p1, v4

    if-eqz v3, :cond_8

    const-wide/16 v4, 0x3

    cmp-long v3, p1, v4

    if-nez v3, :cond_9

    :cond_8
    :goto_3
    return v1

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

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

.method private synchronized native declared-synchronized nativeDiscardFreeBuffers()V
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIIIJ)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 8

    new-instance v1, Landroid/media/ImageReader;

    const-wide/16 v6, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v1
.end method

.method public static newInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 8

    invoke-static {p2, p4, p5}, Landroid/media/ImageReader;->isFormatUsageCombinationAllowed(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Format usage combination is not supported: format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Landroid/media/ImageReader;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJ)V

    return-object v1
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5

    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3

    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "This image was not produced by an ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-wrap0(Landroid/media/ImageReader$SurfaceImage;)V

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, v0

    const/4 v0, 0x0

    return-object v2

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_2
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v2, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

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

    :pswitch_0
    return-object v0

    :pswitch_1
    const/4 v2, 0x0

    return-object v2

    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_0
    iget-object v3, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v4, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v4}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    return-void
.end method

.method detachImage(Landroid/media/Image;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "input image must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-wrap0(Landroid/media/ImageReader$SurfaceImage;)V

    invoke-static {v0, v2}, Landroid/media/ImageReader$SurfaceImage;->-set0(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-wrap1(Landroid/media/ImageReader$SurfaceImage;Z)V

    return-void
.end method

.method public discardFreeBuffers()V
    .locals 2

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
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
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    :cond_3
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    return-void

    :cond_4
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
