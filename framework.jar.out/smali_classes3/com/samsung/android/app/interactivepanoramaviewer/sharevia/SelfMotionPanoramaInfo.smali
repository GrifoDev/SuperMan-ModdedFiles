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
    .locals 25

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v22, "Wide_Selfie_Motion_Info"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    move/from16 v19, v0

    const/16 v22, 0x780

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    :cond_0
    const-string/jumbo v19, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v22, "Total Frames is less than or equal to Zero "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_1
    const-string/jumbo v19, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v22, "SEF:getSEFData KEY_INFO returns null"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    move/from16 v19, v0

    const/16 v22, 0x5a0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v22, v0

    sub-int v19, v19, v22

    add-int/lit8 v19, v19, 0x1

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    const/16 v19, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v19, v23, v24

    const/16 v19, 0x9

    const/16 v24, 0x1

    aput v19, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[F

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int v19, v19, v11

    add-int v19, v19, v14

    add-int/lit8 v19, v19, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    const-wide v22, 0x412e848000000000L    # 1000000.0

    div-double v22, v20, v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    aput v22, v19, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const v15, 0x8ce8

    const v12, 0x8ce8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getLong([BI)J

    move-result-wide v22

    aput-wide v22, v19, v11

    add-int/lit8 v15, v15, 0x8

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const/16 v13, 0xfa0

    const v19, 0xbbc8

    div-int/lit8 v7, v19, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    const/4 v11, 0x0

    move v8, v7

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_7

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    move-object/from16 v19, v0

    aput v18, v19, v11

    add-int/lit8 v11, v11, 0x1

    move v8, v7

    goto :goto_4

    :cond_7
    const v19, 0xcb68

    div-int/lit8 v7, v19, 0x4

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "offset 2 ="

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v22, "InteractivePano_SelfMotionPanoramaInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->updateExtraFrameData([BI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v22, "Wide_Selfie_Motion_MP4_000"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_9

    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "input video file path=  "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v22, "InteractivePano_SelfMotionPanoramaInfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v9, 0x0

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v10, :cond_b

    move-object v9, v10

    :goto_6
    const/16 v19, 0x1

    return v19

    :cond_8
    const/16 v19, 0x1

    :try_start_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    const-string/jumbo v19, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v22, "SEF Data Null"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/16 v19, 0x0

    return v19

    :catchall_0
    move-exception v2

    :goto_7
    if-nez v9, :cond_a

    :goto_8
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/16 v19, 0x0

    return v19

    :cond_a
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    const/4 v9, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v9, 0x0

    goto :goto_6

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v19, 0x0

    return v19

    :catchall_1
    move-exception v2

    move-object v9, v10

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

.method private getLong([BI)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0xff

    aget-byte v2, p1, p2

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    return-wide v0
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

.method private updateExtraFrameData([BI)V
    .locals 12

    add-int/lit8 v1, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "INFO: maxFramesForViewAngleFitting = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mNumExtraFramesStart="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    mul-int/lit8 v8, v8, 0x9

    add-int v4, p2, v8

    iget v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/16 v8, 0x9

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v8, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v2, v8, :cond_1

    const/4 v3, 0x0

    move v1, p2

    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v8, v8, v2

    array-length v8, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v3, v8, :cond_0

    add-int/lit8 p2, v1, 0x1

    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    int-to-double v6, v5

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v8, v8, v2

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v10, v6, v10

    double-to-float v9, v10

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    move v1, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v4

    add-int/lit8 p2, v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    iget v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v8, v10, v11

    const/16 v8, 0x9

    const/4 v11, 0x1

    aput v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    iput-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v8, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ge v2, v8, :cond_3

    const/4 v3, 0x0

    move v1, p2

    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v8, v8, v2

    array-length v8, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ge v3, v8, :cond_2

    add-int/lit8 p2, v1, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    int-to-double v6, v5

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v8, v8, v2

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v10, v6, v10

    double-to-float v9, v10

    aput v9, v8, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v3, v3, 0x1

    move v1, p2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move p2, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move p2, v1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "INFO: updateExtraFrameData"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_4
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
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    aget v2, v3, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v4, v2, v0

    aput v4, v3, v5

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    aget v2, v3, v6

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v4, v2, v0

    aput v4, v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 v3, 0x500

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v3, 0x2d0

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    return-void
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "self motion pano sharevia version 1.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bInit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v3

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

    return v2

    :cond_1
    :try_start_2
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_3
    const-string/jumbo v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

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
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mTotalFrames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mFirstFrame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mLastFrame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mAlgoType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mAlgoVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCaptureDirection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCameraType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCropX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCropY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCropWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mCropHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mMatrixWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mMatrixHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INFO: mIsFilpRequired = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "INFO: mMaxInputFrameCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    if-nez v1, :cond_4

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP: maxFramesForViewAngleFitting = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP: mNumExtraFramesStart = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    if-nez v1, :cond_5

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP: mNumExtraFramesEnd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    if-nez v1, :cond_6

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP:: mSRCMatrix["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP :: mFrameRenderingFlags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP: mExtraFramesStartMatrix["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "IP: mExtraFramesEndMatrix["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "InteractivePano_SelfMotionPanoramaInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public transformRotation()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

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
