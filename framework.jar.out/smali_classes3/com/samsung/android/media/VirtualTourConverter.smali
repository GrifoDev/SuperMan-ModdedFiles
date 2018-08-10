.class public Lcom/samsung/android/media/VirtualTourConverter;
.super Ljava/lang/Object;
.source "VirtualTourConverter.java"


# static fields
.field private static final BUFFER_ARRAY_SIZE:I = 0x4

.field private static final CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

.field private static final FORWARD_VELOCITY:F = 130.0f

.field private static final HIGH_QUALITY:I = 0x0

.field private static final LOW_QUALITY:I = 0x2

.field private static final MAX_FRAME_NUMBER_TO_ENCODE:I = 0x8ca

.field private static final MAX_PLAYING_TIME_IN_SEC:I = 0x5a

.field private static final MEDIUM_QUALITY:I = 0x1

.field private static final NO_ORIENTATION:I = 0x0

.field private static final SIDEWARD_VELOCITY:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "com.sec.android.secvision.sef.VirtualTourConverter"

.field private static final TARGET_FRAME_MAXDIM:I = 0x320

.field private static final TARGET_FRAME_RATE:I = 0x19

.field private static final TARGET_QUALITY:I

.field private static final VT_TEMP_FOLDER_MP4CONVERSION_PATH:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/media/VirtualTourConverter;


# instance fields
.field private final MSG_START_CONVERTING:I

.field private mConfig:I

.field private mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageSize:I

.field private mInputBuffer:[Ljava/nio/ByteBuffer;

.field private mIsLast:Z

.field private mIsProcessing:Z

.field private mMutexObject:Ljava/lang/Object;

.field private mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

.field private mOutputMP4file:Ljava/lang/String;

.field private mSrcPathUrl:Ljava/lang/String;

.field private mTempFolderPath:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/media/VirtualTourConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/VirtualTourConverter;->convertToMP4()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/media/VirtualTourConverter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/VirtualTourConverter;->processShare()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/VTMP4Conversion/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/media/VirtualTourConverter;->VT_TEMP_FOLDER_MP4CONVERSION_PATH:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;->CONFIG_ARGB_8888:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    sput-object v1, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    :try_start_0
    const-string/jumbo v1, "CreateSceneMap"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v1, "MP4Converter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mConfig:I

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOutputMP4file:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mTempFolderPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->MSG_START_CONVERTING:I

    iput v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mImageSize:I

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    iput v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    iput v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mIsLast:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mMutexObject:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mIsProcessing:Z

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mSrcPathUrl:Ljava/lang/String;

    return-void
.end method

.method static native SNConvert2MP4([BII)I
.end method

.method static native SNConvert2MP4_deinit(II)I
.end method

.method static native SNConvert2MP4_init(IILjava/lang/String;Ljava/lang/String;IIII)I
.end method

.method private convertToMP4()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/media/VirtualTourConverter;->mMutexObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Waiting for width or height notify"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mMutexObject:Ljava/lang/Object;

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Received notify for width or height waiting over"

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Encoding parameters: width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOutputMP4file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOutputMP4file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOutputMP4file:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/VirtualTourConverter;->mTempFolderPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/media/VirtualTourConverter;->mConfig:I

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v9, v6, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x19

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/media/VirtualTourConverter;->SNConvert2MP4_init(IILjava/lang/String;Ljava/lang/String;IIII)I

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Time taken for initialisation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    const/4 v10, 0x0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    array-length v2, v12

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/16 v2, 0x8ca

    if-le v10, v2, :cond_3

    :cond_2
    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v3, "Last frame in encoder!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " VConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Time taken for conversion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-float v4, v14

    float-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v3, "Deinitialising"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-static {v2, v3}, Lcom/samsung/android/media/VirtualTourConverter;->SNConvert2MP4_deinit(II)I

    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Time taken for deinitialisation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    move-wide/from16 v0, v16

    long-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v11

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    :try_start_3
    const-string/jumbo v2, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Entering Count convert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-static {v12, v2, v3}, Lcom/samsung/android/media/VirtualTourConverter;->SNConvert2MP4([BII)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    sub-long v2, v2, v16

    add-long/2addr v14, v2

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/VirtualTourConverter;
    .locals 2

    const-class v1, Lcom/samsung/android/media/VirtualTourConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/VirtualTourConverter;->mInstance:Lcom/samsung/android/media/VirtualTourConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/VirtualTourConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/VirtualTourConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/VirtualTourConverter;->mInstance:Lcom/samsung/android/media/VirtualTourConverter;

    :cond_0
    sget-object v0, Lcom/samsung/android/media/VirtualTourConverter;->mInstance:Lcom/samsung/android/media/VirtualTourConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processShare()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v7}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->getImageWidth()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v7}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->getImageHeight()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    if-le v7, v12, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    const/16 v12, 0x320

    if-le v7, v12, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    int-to-float v12, v12

    div-float v4, v7, v12

    const/16 v7, 0x320

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    div-int/lit8 v7, v7, 0x10

    mul-int/lit8 v7, v7, 0x10

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    div-int/lit8 v7, v7, 0x10

    mul-int/lit8 v7, v7, 0x10

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mMutexObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    const-string/jumbo v7, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v13, "Notifying"

    invoke-static {v7, v13}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mMutexObject:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    const-string/jumbo v7, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v13, "Notified"

    invoke-static {v7, v13}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    sget-object v7, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    sget-object v12, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;->CONFIG_ARGB_8888:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    if-ne v7, v12, :cond_3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    mul-int/2addr v7, v12

    mul-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mImageSize:I

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-interface {v7, v12, v13}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->setResolution(II)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v7}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->start()V

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mImageSize:I

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    aput-object v12, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    if-le v7, v12, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    const/16 v12, 0x320

    if-le v7, v12, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    int-to-float v12, v12

    div-float v4, v7, v12

    const/16 v7, 0x320

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7

    :cond_3
    sget-object v7, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    sget-object v12, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;->CONFIG_RGB_565:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    if-ne v7, v12, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    mul-int/2addr v7, v12

    mul-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mImageSize:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    :cond_5
    const-string/jumbo v7, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Entering Count obtain = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    aget-object v12, v12, v6

    invoke-interface {v7, v12}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v7

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mIsLast:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mIsLast:Z

    if-nez v7, :cond_6

    const/16 v7, 0x8ca

    if-le v2, v7, :cond_5

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v12, 0x1

    new-array v12, v12, [B

    invoke-interface {v7, v12}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    const-string/jumbo v7, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v12, "Last frame in renderer!"

    invoke-static {v7, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/media/VirtualTourConverter;->mIsProcessing:Z

    const-string/jumbo v7, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " VConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Time taken for obtaining = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    long-to-float v13, v10

    float-to-double v14, v13

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Exiting processShare()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method private startWithNewLooper()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/samsung/android/media/VirtualTourConverter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/VirtualTourConverter$2;-><init>(Lcom/samsung/android/media/VirtualTourConverter;)V

    iput-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v1, "Send starting message: MSG_START_CONVERTING"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/VirtualTourConverter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method


# virtual methods
.method public declared-synchronized convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOutputMP4file:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/media/VirtualTourConverter;->mSrcPathUrl:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/media/VirtualTourConverter;->VT_TEMP_FOLDER_MP4CONVERSION_PATH:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mTempFolderPath:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngine;->GetOffScreenEngineObj()Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "mOffScreenRenderer is Null"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v5}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->getEngineVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Decode virtual tour sef."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    iget-object v4, p0, Lcom/samsung/android/media/VirtualTourConverter;->mSrcPathUrl:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "This is not a VirtualTour File"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    sget-object v4, Lcom/samsung/android/media/VirtualTourConverter;->CONFIG:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    const/16 v5, 0x19

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->configure(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;I)V

    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->getConfig()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mConfig:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mIsProcessing:Z

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Starting MP4 Conversion"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/media/VirtualTourConverter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/media/VirtualTourConverter$1;-><init>(Lcom/samsung/android/media/VirtualTourConverter;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "No looper in this thread."

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/media/VirtualTourConverter;->startWithNewLooper()V

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :try_start_3
    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Waiting for Consumer Thread Join"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const-string/jumbo v3, "com.sec.android.secvision.sef.VirtualTourConverter"

    const-string/jumbo v4, "Consumer Thread joined"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    invoke-interface {v3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;->deInit()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mOffScreenRenderer:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mHeight:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mIsLast:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mIsProcessing:Z

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/media/VirtualTourConverter;->mInputBuffer:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/media/VirtualTourConverter;->processShare()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method
