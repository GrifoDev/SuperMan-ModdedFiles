.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field private static final SEF_KEYNAME_SOUND_SHOT_WAVE:Ljava/lang/String; = "Motion_Panorama_AAC_000"

.field private static final SMP_HEIGHT:I = 0x5a0

.field private static final SMP_WIDTH:I = 0x780

.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;


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

.field public mExtraFramesEndMatrix:[[F

.field public mExtraFramesStartMatrix:[[F

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mFrameRendererFlag:[I

.field public mHeight:I

.field public mIsFilpRequired:Z

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mMaxInputFrameCount:I

.field public mNumExtraFramesEnd:I

.field public mNumExtraFramesStart:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTimeStamp:[J

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field public maxFramesForViewAngleFitting:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Wide_Selfie_Motion_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_INFO:Ljava/lang/String;

    const-string/jumbo v0, "Wide_Selfie_Motion_MP4_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_VIDEO:Ljava/lang/String;

    const-string/jumbo v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoStart:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoLength:I

    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
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
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v1, "Wide_Selfie_Motion_Info"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/4 v0, 0x2

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    const/4 v0, 0x3

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    const/4 v0, 0x4

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v1, 0x780

    if-eq v0, v1, :cond_2

    :cond_0
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "Total Frames is less than or equal to Zero "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    const/4 v0, 0x6

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    const/4 v0, 0x7

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v0, 0x8

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    const/16 v0, 0x9

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    const/16 v0, 0xa

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_3

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    const/16 v0, 0xb

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    const/16 v0, 0xc

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    const/16 v0, 0xd

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    const/16 v0, 0xe

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    const/16 v0, 0xf

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    const/16 v0, 0x10

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    const/16 v0, 0x11

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v7, 0x0

    aput v0, v4, v7

    const/16 v0, 0x9

    const/4 v7, 0x1

    aput v0, v4, v7

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_5

    move v1, v3

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x12

    invoke-direct {p0, v6, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    int-to-double v8, v4

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    double-to-float v7, v8

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const v0, 0x8ce8

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    move v1, v0

    move v0, v3

    :goto_3
    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getLong([BI)J

    move-result-wide v8

    aput-wide v8, v4, v0

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/16 v0, 0x2ef2

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    move v1, v0

    move v0, v3

    :goto_4
    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-ge v0, v4, :cond_7

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    aput v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_4

    :cond_7
    const/16 v0, 0x32da

    const-string/jumbo v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "offset 2 ="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->updateExtraFrameData([BI)V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string/jumbo v1, "Wide_Selfie_Motion_MP4_000"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_5
    const-string/jumbo v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "input video file path=  "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_b

    :goto_6
    return v5

    :cond_8
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF Data Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-nez v1, :cond_a

    :goto_8
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

    :cond_a
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3

    :cond_b
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .locals 2

    const-class v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
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

.method private getLong([BI)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
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

.method private updateExtraFrameData([BI)V
    .locals 10

    const-wide v8, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "INFO: maxFramesForViewAngleFitting = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mNumExtraFramesStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    mul-int/lit8 v0, v0, 0x9

    add-int v5, v2, v0

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v0, v4, v6

    const/16 v0, 0x9

    const/4 v6, 0x1

    aput v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v3, v3

    if-ge v0, v3, :cond_1

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v2

    int-to-double v6, v2

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v2, v2, v0

    div-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v2, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/16 v0, 0x9

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v3, v3

    if-ge v0, v3, :cond_3

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v2

    int-to-double v6, v2

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v2, v2, v0

    div-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "INFO: updateExtraFrameData"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
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
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    aget v2, v2, v4

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v4

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    div-float/2addr v2, v1

    aput v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x500

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    return-void
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "self motion pano sharevia version 1.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    :cond_3
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printInfo()V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mHeight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mTotalFrames: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mFirstFrame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mLastFrame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mAlgoType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mAlgoVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCaptureDirection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCameraType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCropX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCropY: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCropWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mCropHeight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mMatrixWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP:: mMatrixHeight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "INFO: mIsFilpRequired = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "INFO: mMaxInputFrameCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    if-nez v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    if-nez v0, :cond_4

    :goto_1
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP: maxFramesForViewAngleFitting = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP: mNumExtraFramesStart = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    if-nez v2, :cond_5

    :cond_1
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP: mNumExtraFramesEnd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    if-nez v0, :cond_6

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IP:: mSRCMatrix["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP :: mFrameRenderingFlags = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IP: mExtraFramesStartMatrix["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v0, v0

    if-ge v1, v0, :cond_2

    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "IP: mExtraFramesEndMatrix["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public transformRotation()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

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
