.class public Lcom/samsung/android/media/SelfMotionPanoramaConverter;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;,
        Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I = null

.field static final QUEUE_CAPAPCITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelfMotionPanoramaConverter"

.field private static final TARGET_BIT_RATE:I = 0xf42400

.field private static final TARGET_COLOUR_FORMAT:I

.field private static TARGET_ENCODE_HEIGHT:I = 0x0

.field private static TARGET_ENCODE_WIDTH:I = 0x0

.field private static final TARGET_FRAME_RATE:I = 0x1e

.field private static final TARGET_QUALITY:I

.field private static mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;


# instance fields
.field TWICE_ENCODING:Z

.field volatile bStopRequested:Z

.field lock:Ljava/lang/Object;

.field mDecodeTime:J

.field mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mEncodeTime:J

.field private mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

.field mEncoderThread:Ljava/lang/Thread;

.field mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field mGLThread:Ljava/lang/Thread;

.field mGlTime:J

.field volatile mIsEncoderInit:Z

.field mOutSharePath:Ljava/lang/String;

.field mSEFTime:J

.field private mTotalFrame:I

.field mTotalTime:J


# direct methods
.method private static synthetic -getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->values()[Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-com-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 0
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_QUALITY:I

    .line 35
    const/16 v0, 0x500

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 36
    const/16 v0, 0x2d0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 39
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    .line 74
    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    .line 76
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    .line 77
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    return-void
.end method

.method private decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 28
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .prologue
    .line 199
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    const-string/jumbo v25, "decodeMp4 entry"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    .line 201
    new-instance v9, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;-><init>(Ljava/lang/String;)V

    .line 202
    .local v9, "decoderInterface":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->init(Z)V

    .line 204
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->seekToRequiredGOP(I)Z

    .line 205
    invoke-virtual {v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    move-result-object v17

    .line 211
    .local v17, "metaData":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    .line 212
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decoder  mp4 width : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mp4 height: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "decode init time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v13, 0x0

    .line 216
    .local v13, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getResize()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 218
    sget-object v24, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x4

    const v26, 0x151800

    filled-new-array/range {v25 .. v26}, [I

    move-result-object v25

    invoke-static/range {v24 .. v25}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    .line 224
    .local v16, "mDecoderBuffer":[[B
    :goto_0
    const/4 v15, 0x0

    .line 226
    .local v15, "isDecode":Z
    const/4 v8, 0x0

    .line 227
    .local v8, "decodeCounter":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v25, v0

    invoke-virtual {v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v26

    rem-int v25, v25, v26

    sub-int v11, v24, v25

    .line 228
    .local v11, "framesDecoded":I
    new-instance v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    .line 229
    .local v7, "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 232
    .local v20, "stopCond":[B
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v21, v0

    .local v21, "totalFramesToDecode":I
    move v14, v13

    .line 235
    .end local v13    # "index":I
    .end local v15    # "isDecode":Z
    .local v14, "index":I
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 237
    .local v22, "temp":J
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    :try_start_1
    aget-object v24, v16, v14

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    .line 239
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v13, v0, :cond_0

    .line 240
    const/4 v13, 0x0

    .line 243
    :cond_0
    move/from16 v0, v21

    if-le v11, v0, :cond_2

    .line 245
    const/4 v15, 0x0

    .line 252
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    .line 254
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode isDecode= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz v15, :cond_8

    .line 257
    add-int/lit8 v8, v8, 0x1

    .line 258
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode nextframe done "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 263
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    move-object/from16 v24, v0

    aget v24, v24, v11

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 265
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v11, v0, :cond_3

    .line 266
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_3

    .line 267
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v19, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;[BI[F)V

    .line 269
    .local v19, "pb":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 270
    const-wide/16 v24, 0x19

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 222
    .end local v7    # "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    .end local v8    # "decodeCounter":I
    .end local v11    # "framesDecoded":I
    .end local v12    # "i":I
    .end local v16    # "mDecoderBuffer":[[B
    .end local v19    # "pb":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    .end local v20    # "stopCond":[B
    .end local v21    # "totalFramesToDecode":I
    .end local v22    # "temp":J
    :cond_1
    sget-object v24, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, 0x4

    const/16 v27, 0x0

    aput v26, v25, v27

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    mul-int/lit8 v26, v26, 0x3

    div-int/lit8 v26, v26, 0x2

    const/16 v27, 0x1

    aput v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[B

    .restart local v16    # "mDecoderBuffer":[[B
    goto/16 :goto_0

    .line 249
    .restart local v7    # "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    .restart local v8    # "decodeCounter":I
    .restart local v11    # "framesDecoded":I
    .restart local v20    # "stopCond":[B
    .restart local v21    # "totalFramesToDecode":I
    .restart local v22    # "temp":J
    :cond_2
    :try_start_2
    invoke-virtual {v9, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z

    move-result v15

    .local v15, "isDecode":Z
    goto/16 :goto_2

    .line 274
    .end local v15    # "isDecode":Z
    :cond_3
    new-instance v6, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v6, v0, v1, v11, v2}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;[BI[F)V

    .line 275
    .local v6, "b":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 277
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v11, v0, :cond_4

    .line 278
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    .line 279
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v18, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    iget-object v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v11, v3}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;[BI[F)V

    .line 281
    .local v18, "nb":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 282
    const-wide/16 v24, 0x19

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V

    .line 278
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 286
    .end local v12    # "i":I
    .end local v18    # "nb":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    :cond_4
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode framesDecoded sent to encode = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v6    # "b":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 289
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "share decode framesDecoded = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    .line 297
    :cond_6
    :goto_5
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    move/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v24, :cond_9

    .line 303
    .end local v22    # "temp":J
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 304
    .restart local v22    # "temp":J
    invoke-virtual {v9}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->deInit()V

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    .line 307
    const-string/jumbo v24, "SelfMotionPanoramaConverter"

    const-string/jumbo v25, "decodeMp4 completed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 295
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v24, v0

    new-instance v25, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    sget-object v26, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    const/16 v27, -0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v27

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;[BI[F)V

    invoke-interface/range {v24 .. v25}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 298
    :catch_0
    move-exception v10

    .line 299
    .end local v22    # "temp":J
    .local v10, "e":Ljava/lang/InterruptedException;
    :goto_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v22    # "temp":J
    :cond_9
    move v14, v13

    .end local v13    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_1

    .line 298
    .end local v22    # "temp":J
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_7
.end method

.method private encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 28
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .prologue
    .line 360
    const-string/jumbo v4, "SelfMotionPanoramaConverter"

    const-string/jumbo v5, "encodeMp4 entry"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v23, "outMp4File":Ljava/io/File;
    const/16 v18, 0x0

    .line 366
    .local v18, "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    const/16 v24, 0x0

    .line 368
    .local v24, "ret":I
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v3, v18

    .line 388
    .end local v2    # "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .end local v18    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    .local v3, "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    .line 389
    const-string/jumbo v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share init done with retVal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " encode init time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    .line 392
    const/16 v17, 0x0

    .line 396
    .local v17, "encodeCounter":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v20, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v13, v4, 0x4

    .line 399
    .local v13, "argbSize":I
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 400
    .local v12, "abgrBuffer":Ljava/nio/ByteBuffer;
    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 401
    .local v21, "nv12Buffer":Ljava/nio/ByteBuffer;
    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 404
    .local v22, "nv12Bytes":[B
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 408
    .local v15, "bytes":[B
    array-length v4, v15

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 410
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_1

    .line 500
    .end local v15    # "bytes":[B
    :cond_0
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 502
    .local v26, "temp":J
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 516
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    .line 517
    const-string/jumbo v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encodeMp4 completed ret value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 370
    .end local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    .end local v12    # "abgrBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "argbSize":I
    .end local v17    # "encodeCounter":I
    .end local v20    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v21    # "nv12Buffer":Ljava/nio/ByteBuffer;
    .end local v22    # "nv12Bytes":[B
    .end local v26    # "temp":J
    .restart local v2    # "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .restart local v18    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    move-result-object v2

    .line 371
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    sget v3, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 372
    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_QUALITY:I

    sget v9, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    .line 371
    const/4 v6, 0x0

    .line 372
    const/16 v8, 0x1e

    .line 371
    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMp4EngineJava(IILjava/lang/String;IIII)I

    move-result v24

    move-object/from16 v3, v18

    .line 373
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    goto/16 :goto_0

    .end local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    :pswitch_2
    move-object/from16 v3, v18

    .line 377
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    goto/16 :goto_0

    .line 379
    .end local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    :pswitch_3
    new-instance v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;

    invoke-direct {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;-><init>()V

    .line 380
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .end local v18    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 381
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    .line 380
    const v6, 0xf42400

    const/16 v7, 0x1e

    const/4 v8, 0x1

    .line 381
    const/16 v9, 0x15

    .line 380
    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->init(IIIIIILjava/lang/String;I)I

    move-result v24

    goto/16 :goto_0

    .line 416
    .end local v2    # "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .restart local v12    # "abgrBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "argbSize":I
    .restart local v15    # "bytes":[B
    .restart local v17    # "encodeCounter":I
    .restart local v20    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v21    # "nv12Buffer":Ljava/nio/ByteBuffer;
    .restart local v22    # "nv12Bytes":[B
    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 420
    .restart local v26    # "temp":J
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 428
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 430
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    .line 432
    .local v19, "frame":[B
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 446
    :goto_5
    :pswitch_4
    add-int/lit8 v17, v17, 0x1

    .line 447
    const-string/jumbo v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share EncodeFrame done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ret value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 496
    .end local v15    # "bytes":[B
    .end local v19    # "frame":[B
    .end local v26    # "temp":J
    :catch_0
    move-exception v16

    .line 497
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 422
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "bytes":[B
    .restart local v26    # "temp":J
    :pswitch_5
    const/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->setTimeOutUs(I)V

    goto :goto_4

    .line 434
    .restart local v19    # "frame":[B
    :pswitch_6
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_5

    .line 440
    :pswitch_7
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V

    goto :goto_5

    .line 449
    .end local v19    # "frame":[B
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_2

    .line 455
    .end local v26    # "temp":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 457
    .restart local v26    # "temp":J
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 459
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 462
    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    move-object/from16 v0, v21

    invoke-static {v12, v0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swABGR8888ToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    .line 465
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 466
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 468
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 470
    invoke-static {}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->-getcom-samsung-android-media-SelfMotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/SelfMotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    .line 484
    :goto_6
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_4

    .line 486
    move-object/from16 v0, v22

    array-length v4, v0

    new-array v14, v4, [B

    .line 487
    .local v14, "buffer":[B
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v14, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 488
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v14    # "buffer":[B
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 492
    const-string/jumbo v4, "SelfMotionPanoramaConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "share EncodeFrame done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ret value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_1

    .line 472
    :pswitch_9
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_6

    .line 478
    :pswitch_a
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 504
    .end local v15    # "bytes":[B
    :pswitch_b
    invoke-virtual {v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->DeInitMP4Engine()I

    goto/16 :goto_3

    .line 510
    :pswitch_c
    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->deinit()V

    goto/16 :goto_3

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 420
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    .line 432
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 470
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/SelfMotionPanoramaConverter;
    .locals 2

    .prologue
    const-class v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;

    .line 87
    :cond_0
    sget-object v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/SelfMotionPanoramaConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    .locals 24
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    .prologue
    .line 312
    const-string/jumbo v2, "SelfMotionPanoramaConverter"

    const-string/jumbo v3, "processFrame entry"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    .line 314
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    sget v9, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v10, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    .line 317
    const-string/jumbo v2, "SelfMotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gl init time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[B

    .line 320
    .local v20, "mGLBuffer":[[B
    const/16 v18, 0x0

    .line 322
    .local v18, "index":I
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .local v21, "stopCond":[B
    move/from16 v19, v18

    .line 325
    .end local v18    # "index":I
    .local v19, "index":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    if-nez v2, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;

    .line 328
    .local v14, "buff":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get0(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[B

    move-result-object v15

    .line 329
    .local v15, "bytes":[B
    array-length v2, v15

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "buff":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    .end local v15    # "bytes":[B
    :cond_0
    move/from16 v18, v19

    .line 351
    .end local v19    # "index":I
    .restart local v18    # "index":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 352
    .local v22, "temp":J
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenFinalize()V

    .line 353
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    .line 355
    const-string/jumbo v2, "SelfMotionPanoramaConverter"

    const-string/jumbo v3, "processFrame completed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 336
    .end local v18    # "index":I
    .end local v22    # "temp":J
    .restart local v14    # "buff":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    .restart local v15    # "bytes":[B
    .restart local v19    # "index":I
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v22

    .line 337
    .restart local v22    # "temp":J
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "index":I
    .restart local v18    # "index":I
    :try_start_2
    aget-object v16, v20, v19

    .line 338
    .local v16, "dstabgr":[B
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 339
    const/16 v18, 0x0

    .line 340
    :cond_2
    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get2(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)[F

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenTransformFrame([B[B[F)V

    .line 341
    const-string/jumbo v2, "SelfMotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encoded actual frame no = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;->-get1(Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 344
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v19, v18

    .end local v18    # "index":I
    .restart local v19    # "index":I
    goto/16 :goto_0

    .line 347
    .end local v14    # "buff":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    .end local v15    # "bytes":[B
    .end local v16    # "dstabgr":[B
    .end local v22    # "temp":J
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    move/from16 v18, v19

    .line 348
    .end local v19    # "index":I
    .restart local v18    # "index":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 347
    .end local v17    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "buff":Lcom/samsung/android/media/SelfMotionPanoramaConverter$DecodedBuffer;
    .restart local v15    # "bytes":[B
    .restart local v22    # "temp":J
    :catch_1
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private stopShare()V
    .locals 3

    .prologue
    .line 522
    const-string/jumbo v1, "SelfMotionPanoramaConverter"

    const-string/jumbo v2, "stopShare entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z

    .line 525
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 531
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 536
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "file":Ljava/io/File;
    :cond_2
    monitor-exit v2

    .line 541
    const-string/jumbo v1, "SelfMotionPanoramaConverter"

    const-string/jumbo v2, "stopShare exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 94
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->bStopRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 99
    return-void

    .line 101
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalTime:J

    .line 102
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    const-string/jumbo v11, "Internal version = 1.5"

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share entry file to be shared: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " output file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 106
    .local v8, "temp":J
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    move-result-object v4

    .line 107
    .local v4, "info":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 109
    .local v6, "ret":Z
    if-nez v6, :cond_1

    .line 111
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    const-string/jumbo v11, "SEF init fails"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 112
    return-void

    .line 114
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->printInfo()V

    .line 115
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    const-string/jumbo v12, " cropx: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    const-string/jumbo v12, " cropy: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    const-string/jumbo v12, " cropWidth: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    const-string/jumbo v12, " cropHeight: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 116
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    const-string/jumbo v12, " orientation: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    const-string/jumbo v12, " captureMode: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    const-string/jumbo v12, " mFirstFrame: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 117
    const-string/jumbo v12, " mLastFrame: "

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 118
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    .line 115
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v11, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v7, v11

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalFrame:I

    .line 122
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 123
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 125
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_2

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_3

    .line 127
    :cond_2
    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 128
    .local v5, "oldValue":I
    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 129
    sput v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 132
    .end local v5    # "oldValue":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mSEFTime:J

    .line 133
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->printInfo()V

    .line 134
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    const-string/jumbo v12, " cropx: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    const-string/jumbo v12, " cropy: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    const-string/jumbo v12, " cropWidth: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    const-string/jumbo v12, " cropHeight: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    const-string/jumbo v12, " orientation: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    const-string/jumbo v12, " captureMode: "

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 136
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->transformRotation()I

    move-result v12

    .line 134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/SelfMotionPanoramaConverter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$1;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    .line 145
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 159
    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter$2;-><init>(Lcom/samsung/android/media/SelfMotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    .line 166
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    :cond_4
    :goto_0
    const/4 v7, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mIsEncoderInit:Z

    .line 178
    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 180
    new-instance v3, Ljava/io/File;

    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 183
    .end local v3    # "file":Ljava/io/File;
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->freeInstance()V

    .line 185
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_6

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_7

    .line 187
    :cond_6
    sget v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 188
    .restart local v5    # "oldValue":I
    sget v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 189
    sput v5, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 192
    .end local v5    # "oldValue":I
    :cond_7
    const-string/jumbo v7, "SelfMotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share exit Total Time: mTotalTime "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mTotalTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " encode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " decode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mDecodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " opengl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " sef: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/SelfMotionPanoramaConverter;->mSEFTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    .line 93
    return-void

    .line 173
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "info":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .end local v6    # "ret":Z
    .end local v8    # "temp":J
    :catchall_0
    move-exception v7

    :try_start_a
    monitor-exit v10

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7
.end method
