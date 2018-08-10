.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
.super Ljava/lang/Object;
.source "InteractiveShotInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;


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

    const-string/jumbo v0, "InteractiveShotInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Interactive_Panorama_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_INFO:Ljava/lang/String;

    const-string/jumbo v0, "Interactive_Panorama_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_VIDEO:Ljava/lang/String;

    const-string/jumbo v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoStart:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoLength:I

    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)V
    .locals 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v15, "Interactive_Panorama_Info"

    invoke-static {v14, v15}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    if-nez v14, :cond_2

    :cond_0
    const-string/jumbo v14, "InteractiveShotInfo"

    const-string/jumbo v15, "Total Frames is less than or equal to Zero "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v14, "InteractiveShotInfo"

    const-string/jumbo v15, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x1

    if-lez v14, :cond_0

    const/4 v14, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    const/4 v14, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    const/16 v14, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    const/16 v14, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    const/16 v14, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    const/16 v14, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    const/16 v14, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v14, v16, v17

    const/16 v14, 0x9

    const/16 v17, 0x1

    aput v14, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v14, v14

    if-ge v8, v14, :cond_4

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v14, v14, v8

    array-length v14, v14

    if-ge v9, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v14, v14, v8

    array-length v14, v14

    mul-int/2addr v14, v8

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v11

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v14, v14, v8

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v16, v12, v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    aput v15, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v15, "Interactive_Panorama_000"

    invoke-static {v14, v15}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "input video file path=  "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "InteractiveShotInfo"

    invoke-static {v15, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_8

    move-object v6, v7

    :goto_3
    return-void

    :cond_5
    const/4 v14, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    const-string/jumbo v14, "InteractiveShotInfo"

    const-string/jumbo v15, "SEF Data Null"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v2

    :goto_4
    if-nez v6, :cond_7

    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_7
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v6, 0x0

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v6, v7

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    .locals 2

    const-class v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
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

    mul-int/lit8 p2, p2, 0x4

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    return v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x6

    if-eq p1, p2, :cond_0

    int-to-float v3, p1

    int-to-float v4, p2

    div-float v0, v3, v4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    aget v2, v3, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v4, v2, v0

    aput v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    aget v2, v3, v6

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v4, v2, v0

    aput v4, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 v3, 0x500

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    const/16 v3, 0x2d0

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    return-void
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "InteractiveShotInfo"

    const-string/jumbo v1, "frozen moment sharevia version 1.0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bInit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InteractiveShotInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInfo(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    const-string/jumbo v0, "InteractiveShotInfo"

    const-string/jumbo v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printInfo()V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractiveShotInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformRotation()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

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
