.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
.super Ljava/lang/Object;
.source "MotionPanoramaInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field private static final SEF_KEYNAME_SOUND_SHOT_WAVE:Ljava/lang/String; = "Motion_Panorama_AAC_000"

.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;


# instance fields
.field final KEY_INFO:Ljava/lang/String;

.field final KEY_VIDEO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private bInit:Z

.field private isSEFDataFlagNull:Z

.field public mAlgoType:I

.field public mAlgoVersion:I

.field public mCameraType:I

.field public mCaptureDirection:I

.field public mCropHeight:I

.field public mCropWidth:I

.field public mCropX:I

.field public mCropY:I

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mHeight:I

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Motion_Panorama_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->KEY_INFO:Ljava/lang/String;

    const-string/jumbo v0, "Motion_Panorama_MP4_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->KEY_VIDEO:Ljava/lang/String;

    const-string/jumbo v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoStart:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoLength:I

    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v1, "Motion_Panorama_Info"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    const/4 v0, 0x3

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    const/4 v0, 0x4

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "Total Frames is less than or equal to Zero "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    const/4 v0, 0x6

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    const/4 v0, 0x7

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v0, 0x8

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    const/16 v0, 0x9

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    const/16 v0, 0xa

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    const/16 v0, 0xb

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    const/16 v0, 0xc

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    const/16 v0, 0xd

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    const/16 v0, 0xe

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    const/16 v0, 0xf

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/16 v0, 0x9

    const/4 v6, 0x1

    aput v0, v5, v6

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v5, v5, v0

    array-length v5, v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v5, v5, v0

    array-length v5, v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x10

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInt([BI)I

    move-result v5

    int-to-double v6, v5

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v5, v5, v0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v1, "Motion_Panorama_MP4_000"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_2
    const-string/jumbo v1, "InteractivePano_InteractiveShotInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "input video file path=  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_8

    :goto_3
    return v10

    :cond_5
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "SEF Data Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-nez v1, :cond_7

    :goto_5
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3

    :cond_7
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3

    :cond_8
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    .locals 2

    const-class v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInt([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0x4

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x6

    if-eq p1, p2, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v4

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x500

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    return-void
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "motion pano sharevia version 1.0.2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->isSEFDataFlagNull:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    const-string/jumbo v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->bInit:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printInfo()V
    .locals 4

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "InteractivePano_InteractiveShotInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public transformRotation()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
