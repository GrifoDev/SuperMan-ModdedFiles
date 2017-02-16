.class public Lcom/samsung/android/media/MotionPanoramaConverter;
.super Ljava/lang/Object;
.source "MotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues:[I = null

.field static final QUEUE_CAPAPCITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionPanoramaConverter"

.field private static final TARGET_BIT_RATE:I = 0xf42400

.field private static final TARGET_COLOUR_FORMAT:I

.field private static TARGET_ENCODE_HEIGHT:I = 0x0

.field private static TARGET_ENCODE_WIDTH:I = 0x0

.field private static final TARGET_FRAME_RATE:I = 0x1e

.field private static final TARGET_QUALITY:I

.field private static mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;


# instance fields
.field TWICE_ENCODING:Z

.field volatile bStopRequested:Z

.field lock:Ljava/lang/Object;

.field mDecodeTime:J

.field mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field mEncodeTime:J

.field private mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

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

.field mTotalTime:J


# direct methods
.method private static synthetic -getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->-com-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->-com-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->values()[Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->MP4_CONVERTER:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->NATIVE:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->-com-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/samsung/android/media/MotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 0
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/MotionPanoramaConverter;->encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/media/MotionPanoramaConverter;->processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_QUALITY:I

    .line 29
    const/16 v0, 0x500

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 30
    const/16 v0, 0x2d0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 33
    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    .line 43
    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    .line 55
    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    .line 57
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    .line 58
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    .line 56
    return-void
.end method

.method private decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 22
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .prologue
    .line 177
    const-string/jumbo v18, "MotionPanoramaConverter"

    const-string/jumbo v19, "decodeMp4 entry"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    .line 179
    new-instance v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;-><init>(Ljava/lang/String;)V

    .line 180
    .local v6, "decoderInterface":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->init(Z)V

    .line 182
    invoke-virtual {v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    move-result-object v13

    .line 188
    .local v13, "metaData":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    .line 189
    const-string/jumbo v18, "MotionPanoramaConverter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "share decoder  mp4 width : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v13, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " mp4 height: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v13, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "decode init time: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v9, 0x0

    .line 193
    .local v9, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getResize()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 195
    sget-object v18, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x4

    const v20, 0x151800

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 203
    .local v12, "mDecoderBuffer":[[B
    :goto_0
    const/4 v5, 0x0

    .line 204
    .local v5, "decodeCounter":I
    const/4 v8, 0x0

    .line 205
    .local v8, "framesDecoded":I
    new-instance v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    .line 206
    .local v4, "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v14, v0, [B

    .line 209
    .local v14, "stopCond":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    .local v15, "totalFramesToDecode":I
    move v10, v9

    .line 212
    .end local v9    # "index":I
    .local v10, "index":I
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 214
    .local v16, "temp":J
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    :try_start_1
    aget-object v18, v12, v10

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    .line 216
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v9, v0, :cond_0

    .line 217
    const/4 v9, 0x0

    .line 219
    :cond_0
    if-ne v8, v15, :cond_4

    .line 221
    const/4 v11, 0x0

    .line 228
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    .line 230
    const-string/jumbo v18, "MotionPanoramaConverter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "share decode isDecode= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz v11, :cond_5

    .line 233
    add-int/lit8 v5, v5, 0x1

    .line 234
    const-string/jumbo v18, "MotionPanoramaConverter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "share decode nextframe done "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 240
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    .line 247
    :cond_1
    :goto_3
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    move/from16 v18, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v18, :cond_6

    .line 253
    .end local v16    # "temp":J
    :cond_2
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 254
    .restart local v16    # "temp":J
    invoke-virtual {v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->deInit()V

    .line 255
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    .line 257
    const-string/jumbo v18, "MotionPanoramaConverter"

    const-string/jumbo v19, "decodeMp4 completed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 199
    .end local v4    # "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    .end local v5    # "decodeCounter":I
    .end local v8    # "framesDecoded":I
    .end local v12    # "mDecoderBuffer":[[B
    .end local v14    # "stopCond":[B
    .end local v15    # "totalFramesToDecode":I
    .end local v16    # "temp":J
    :cond_3
    sget-object v18, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v20, v19, v21

    iget v0, v13, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    move/from16 v20, v0

    iget v0, v13, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    const/16 v21, 0x1

    aput v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .restart local v12    # "mDecoderBuffer":[[B
    goto/16 :goto_0

    .line 225
    .restart local v4    # "data":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;
    .restart local v5    # "decodeCounter":I
    .restart local v8    # "framesDecoded":I
    .restart local v14    # "stopCond":[B
    .restart local v15    # "totalFramesToDecode":I
    .restart local v16    # "temp":J
    :cond_4
    :try_start_2
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z

    move-result v11

    .local v11, "isDecode":Z
    goto/16 :goto_2

    .line 245
    .end local v11    # "isDecode":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .end local v16    # "temp":J
    .local v7, "e":Ljava/lang/InterruptedException;
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "temp":J
    :cond_6
    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_1

    .line 248
    .end local v16    # "temp":J
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/InterruptedException;
    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto :goto_5
.end method

.method private encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 28
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .prologue
    .line 310
    const-string/jumbo v4, "MotionPanoramaConverter"

    const-string/jumbo v5, "encodeMp4 entry"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v23, "outMp4File":Ljava/io/File;
    const/16 v18, 0x0

    .line 316
    .local v18, "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    const/16 v24, 0x0

    .line 318
    .local v24, "ret":I
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->-getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v3, v18

    .line 338
    .end local v2    # "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    .end local v18    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    .local v3, "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    .line 339
    const-string/jumbo v4, "MotionPanoramaConverter"

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

    iget-wide v6, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    .line 342
    const/16 v17, 0x0

    .line 346
    .local v17, "encodeCounter":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v20, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v13, v4, 0x4

    .line 349
    .local v13, "argbSize":I
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 350
    .local v12, "abgrBuffer":Ljava/nio/ByteBuffer;
    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 351
    .local v21, "nv12Buffer":Ljava/nio/ByteBuffer;
    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v22, v0

    .line 354
    .local v22, "nv12Bytes":[B
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 358
    .local v15, "bytes":[B
    array-length v4, v15

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 360
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_0

    .line 362
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_1

    .line 450
    .end local v15    # "bytes":[B
    :cond_0
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 452
    .local v26, "temp":J
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->-getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 466
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    .line 467
    const-string/jumbo v4, "MotionPanoramaConverter"

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

    .line 308
    return-void

    .line 320
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

    .line 321
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    sget v3, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 322
    sget v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_QUALITY:I

    sget v9, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    .line 321
    const/4 v6, 0x0

    .line 322
    const/16 v8, 0x1e

    .line 321
    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMp4EngineJava(IILjava/lang/String;IIII)I

    move-result v24

    move-object/from16 v3, v18

    .line 323
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    goto/16 :goto_0

    .end local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    .local v2, "mp4Writer":Lcom/sec/android/app/interactiveshot/jni/MP4Writer;
    :pswitch_2
    move-object/from16 v3, v18

    .line 327
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    goto/16 :goto_0

    .line 329
    .end local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    :pswitch_3
    new-instance v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;

    invoke-direct {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;-><init>()V

    .line 330
    .restart local v3    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .end local v18    # "encoder":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 331
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    .line 330
    const v6, 0xf42400

    const/16 v7, 0x1e

    const/4 v8, 0x1

    .line 331
    const/16 v9, 0x15

    .line 330
    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->init(IIIIIILjava/lang/String;I)I

    move-result v24

    goto/16 :goto_0

    .line 366
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

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 370
    .restart local v26    # "temp":J
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->-getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 378
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 380
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    .line 382
    .local v19, "frame":[B
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->-getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    .line 396
    :goto_5
    :pswitch_4
    add-int/lit8 v17, v17, 0x1

    .line 397
    const-string/jumbo v4, "MotionPanoramaConverter"

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

    .line 446
    .end local v15    # "bytes":[B
    .end local v19    # "frame":[B
    .end local v26    # "temp":J
    :catch_0
    move-exception v16

    .line 447
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 372
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "bytes":[B
    .restart local v26    # "temp":J
    :pswitch_5
    const/16 v4, 0x1f4

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->setTimeOutUs(I)V

    goto :goto_4

    .line 384
    .restart local v19    # "frame":[B
    :pswitch_6
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_5

    .line 390
    :pswitch_7
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V

    goto :goto_5

    .line 399
    .end local v19    # "frame":[B
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_2

    .line 405
    .end local v26    # "temp":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 407
    .restart local v26    # "temp":J
    invoke-virtual {v12, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 408
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 412
    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    move-object/from16 v0, v21

    invoke-static {v12, v0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swABGR8888ToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    .line 415
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 418
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 420
    invoke-static {}, Lcom/samsung/android/media/MotionPanoramaConverter;->-getcom-samsung-android-media-MotionPanoramaConverter$ENCODERSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    .line 434
    :goto_6
    :pswitch_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v4, :cond_4

    .line 436
    move-object/from16 v0, v22

    array-length v4, v0

    new-array v14, v4, [B

    .line 437
    .local v14, "buffer":[B
    move-object/from16 v0, v22

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v14, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 438
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v14    # "buffer":[B
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 442
    const-string/jumbo v4, "MotionPanoramaConverter"

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

    .line 443
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v26

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    goto/16 :goto_1

    .line 422
    :pswitch_9
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    goto :goto_6

    .line 428
    :pswitch_a
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 454
    .end local v15    # "bytes":[B
    :pswitch_b
    invoke-virtual {v2}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->DeInitMP4Engine()I

    goto/16 :goto_3

    .line 460
    :pswitch_c
    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->deinit()V

    goto/16 :goto_3

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 452
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 370
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    .line 382
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 420
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/MotionPanoramaConverter;
    .locals 2

    .prologue
    const-class v1, Lcom/samsung/android/media/MotionPanoramaConverter;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/samsung/android/media/MotionPanoramaConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/MotionPanoramaConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;

    .line 68
    :cond_0
    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 26
    .param p1, "info"    # Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    .prologue
    .line 262
    const-string/jumbo v2, "MotionPanoramaConverter"

    const-string/jumbo v3, "processFrame entry"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    .line 264
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    sget v9, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v10, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v12

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    .line 267
    const-string/jumbo v2, "MotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gl init time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[B

    .line 270
    .local v21, "mGLBuffer":[[B
    const/16 v19, 0x0

    .line 271
    .local v19, "index":I
    const/4 v15, 0x0

    .line 273
    .local v15, "counter":I
    const/4 v2, 0x1

    new-array v0, v2, [B

    move-object/from16 v22, v0

    .local v22, "stopCond":[B
    move/from16 v16, v15

    .end local v15    # "counter":I
    .local v16, "counter":I
    move/from16 v20, v19

    .line 276
    .end local v19    # "index":I
    .local v20, "index":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v2, :cond_0

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 279
    .local v14, "bytes":[B
    array-length v2, v14

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "bytes":[B
    :cond_0
    move/from16 v15, v16

    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    move/from16 v19, v20

    .line 301
    .end local v20    # "index":I
    .restart local v19    # "index":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 302
    .local v24, "temp":J
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenFinalize()V

    .line 303
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v24

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    .line 305
    const-string/jumbo v2, "MotionPanoramaConverter"

    const-string/jumbo v3, "processFrame completed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 286
    .end local v15    # "counter":I
    .end local v19    # "index":I
    .end local v24    # "temp":J
    .restart local v14    # "bytes":[B
    .restart local v16    # "counter":I
    .restart local v20    # "index":I
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v24

    .line 287
    .restart local v24    # "temp":J
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "index":I
    .restart local v19    # "index":I
    :try_start_2
    aget-object v17, v21, v20

    .line 288
    .local v17, "dstabgr":[B
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    .line 289
    const/16 v19, 0x0

    .line 291
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    :try_start_3
    aget-object v2, v2, v16

    move-object/from16 v0, v17

    invoke-static {v14, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenTransformFrame([B[B[F)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 294
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v24

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v16, v15

    .end local v15    # "counter":I
    .restart local v16    # "counter":I
    move/from16 v20, v19

    .end local v19    # "index":I
    .restart local v20    # "index":I
    goto :goto_0

    .line 297
    .end local v14    # "bytes":[B
    .end local v17    # "dstabgr":[B
    .end local v24    # "temp":J
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/InterruptedException;
    move/from16 v15, v16

    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    move/from16 v19, v20

    .line 298
    .end local v20    # "index":I
    .restart local v19    # "index":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 297
    .end local v15    # "counter":I
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "bytes":[B
    .restart local v16    # "counter":I
    .restart local v24    # "temp":J
    :catch_1
    move-exception v18

    .restart local v18    # "e":Ljava/lang/InterruptedException;
    move/from16 v15, v16

    .end local v16    # "counter":I
    .restart local v15    # "counter":I
    goto :goto_2

    .end local v18    # "e":Ljava/lang/InterruptedException;
    .restart local v17    # "dstabgr":[B
    :catch_2
    move-exception v18

    .restart local v18    # "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private stopShare()V
    .locals 3

    .prologue
    .line 472
    const-string/jumbo v1, "MotionPanoramaConverter"

    const-string/jumbo v2, "stopShare entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    .line 475
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 481
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 486
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "file":Ljava/io/File;
    :cond_2
    monitor-exit v2

    .line 491
    const-string/jumbo v1, "MotionPanoramaConverter"

    const-string/jumbo v2, "stopShare exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 481
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

    .line 75
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 80
    return-void

    .line 82
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mTotalTime:J

    .line 83
    const-string/jumbo v7, "MotionPanoramaConverter"

    const-string/jumbo v11, "Internal version = 1.5"

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string/jumbo v7, "MotionPanoramaConverter"

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

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "temp":J
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    move-result-object v4

    .line 88
    .local v4, "info":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 90
    .local v6, "ret":Z
    if-nez v6, :cond_1

    .line 92
    const-string/jumbo v7, "MotionPanoramaConverter"

    const-string/jumbo v11, "SEF init fails"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 93
    return-void

    .line 95
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->printInfo()V

    .line 96
    const-string/jumbo v7, "MotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    const-string/jumbo v12, " cropx: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    const-string/jumbo v12, " cropy: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    const-string/jumbo v12, " cropWidth: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    const-string/jumbo v12, " cropHeight: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    const-string/jumbo v12, " orientation: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    const-string/jumbo v12, " captureMode: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v12

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    sput v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 101
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    sput v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 103
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_2

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_3

    .line 105
    :cond_2
    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 106
    .local v5, "oldValue":I
    sget v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 107
    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 110
    .end local v5    # "oldValue":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mSEFTime:J

    .line 111
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->printInfo()V

    .line 112
    const-string/jumbo v7, "MotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share offscreenInitialize width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " height: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    const-string/jumbo v12, " cropx: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    const-string/jumbo v12, " cropy: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    const-string/jumbo v12, " cropWidth: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    const-string/jumbo v12, " cropHeight: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 113
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 114
    const-string/jumbo v12, " orientation: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 114
    iget v12, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 114
    const-string/jumbo v12, " captureMode: "

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 114
    invoke-virtual {v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v12

    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/MotionPanoramaConverter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v11, v0, v1, v4}, Lcom/samsung/android/media/MotionPanoramaConverter$1;-><init>(Lcom/samsung/android/media/MotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    .line 123
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 137
    new-instance v7, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/media/MotionPanoramaConverter$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/samsung/android/media/MotionPanoramaConverter$2;-><init>(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    invoke-direct {v7, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    .line 144
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/media/MotionPanoramaConverter;->decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 155
    :cond_4
    :goto_0
    const/4 v7, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    .line 156
    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 158
    new-instance v3, Ljava/io/File;

    iget-object v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 161
    .end local v3    # "file":Ljava/io/File;
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->freeInstance()V

    .line 163
    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v7, v11, :cond_6

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v11, 0x10e

    if-ne v7, v11, :cond_7

    .line 165
    :cond_6
    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 166
    .restart local v5    # "oldValue":I
    sget v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v7, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    .line 167
    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    .line 170
    .end local v5    # "oldValue":I
    :cond_7
    const-string/jumbo v7, "MotionPanoramaConverter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "share exit Total Time: mTotalTime "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mTotalTime:J

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " encode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " decode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " opengl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " sef: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/media/MotionPanoramaConverter;->mSEFTime:J

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

    .line 74
    return-void

    .line 151
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "info":Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;
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
