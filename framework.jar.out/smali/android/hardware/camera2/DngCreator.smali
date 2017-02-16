.class public final Landroid/hardware/camera2/DngCreator;
.super Ljava/lang/Object;
.source "DngCreator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final BYTES_PER_RGB_PIX:I = 0x3

.field private static final DEFAULT_PIXEL_STRIDE:I = 0x2

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_LAT_REF_NORTH:Ljava/lang/String; = "N"

.field private static final GPS_LAT_REF_SOUTH:Ljava/lang/String; = "S"

.field private static final GPS_LONG_REF_EAST:Ljava/lang/String; = "E"

.field private static final GPS_LONG_REF_WEST:Ljava/lang/String; = "W"

.field public static final MAX_THUMBNAIL_DIMENSION:I = 0x100

.field private static final TAG:Ljava/lang/String; = "DngCreator"

.field private static final TAG_ORIENTATION_UNKNOWN:I = 0x9

.field private static final TIFF_DATETIME_FORMAT:Ljava/lang/String; = "yyyy:MM:dd HH:mm:ss"

.field private static final sDateTimeStampFormat:Ljava/text/DateFormat;

.field private static final sExifGPSDateStamp:Ljava/text/DateFormat;


# instance fields
.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    .line 454
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 453
    sput-object v0, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    .line 459
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 460
    sget-object v0, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 656
    invoke-static {}, Landroid/hardware/camera2/DngCreator;->nativeClassInit()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    .locals 12
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "metadata"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const-string/jumbo v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 455
    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Null argument to DngCreator constructor"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 93
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 96
    .local v4, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 99
    .local v0, "bootTimeMillis":J
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 100
    .local v7, "timestamp":Ljava/lang/Long;
    move-wide v2, v4

    .line 101
    .local v2, "captureTime":J
    if-eqz v7, :cond_2

    .line 102
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    add-long v2, v8, v0

    .line 106
    :cond_2
    sget-object v8, Landroid/hardware/camera2/DngCreator;->sDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "formattedCaptureTime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    invoke-direct {p0, v8, v9, v6}, Landroid/hardware/camera2/DngCreator;->nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static colorToRgb(II[B)V
    .locals 2
    .param p0, "color"    # I
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .prologue
    .line 520
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 521
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 522
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 519
    return-void
.end method

.method private static convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p0, "argbBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 591
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 592
    .local v10, "height":I
    mul-int/lit8 v0, v3, 0x3

    mul-int/2addr v0, v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 594
    .local v8, "buf":Ljava/nio/ByteBuffer;
    new-array v1, v3, [I

    .line 595
    .local v1, "pixelRow":[I
    mul-int/lit8 v0, v3, 0x3

    new-array v9, v0, [B

    .line 596
    .local v9, "finalRow":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 598
    const/4 v7, 0x1

    move-object v0, p0

    move v4, v2

    move v6, v3

    .line 597
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 599
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v3, :cond_0

    .line 600
    aget v0, v1, v11

    mul-int/lit8 v4, v11, 0x3

    invoke-static {v0, v4, v9}, Landroid/hardware/camera2/DngCreator;->colorToRgb(II[B)V

    .line 599
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 602
    :cond_0
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 596
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 605
    .end local v11    # "j":I
    :cond_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 606
    return-object v8
.end method

.method private static convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 28
    .param p0, "yuvImage"    # Landroid/media/Image;

    .prologue
    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v19

    .line 532
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 533
    .local v6, "height":I
    mul-int/lit8 v26, v19, 0x3

    mul-int v26, v26, v6

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 535
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v23, v26, v27

    .line 536
    .local v23, "yPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v12, v26, v27

    .line 537
    .local v12, "uPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v26

    const/16 v27, 0x2

    aget-object v17, v26, v27

    .line 539
    .local v17, "vPlane":Landroid/media/Image$Plane;
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 540
    .local v20, "yBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 541
    .local v9, "uBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 543
    .local v14, "vBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 544
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 545
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 547
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v24

    .line 548
    .local v24, "yRowStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    .line 549
    .local v18, "vRowStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 551
    .local v13, "uRowStride":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v22

    .line 552
    .local v22, "yPixStride":I
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    .line 553
    .local v16, "vPixStride":I
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    .line 555
    .local v11, "uPixStride":I
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .local v25, "yuvPixel":[B
    fill-array-data v25, :array_0

    .line 556
    add-int/lit8 v26, v19, -0x1

    mul-int v26, v26, v22

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 557
    .local v21, "yFullRow":[B
    div-int/lit8 v26, v19, 0x2

    add-int/lit8 v26, v26, -0x1

    mul-int v26, v26, v11

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 558
    .local v10, "uFullRow":[B
    div-int/lit8 v26, v19, 0x2

    add-int/lit8 v26, v26, -0x1

    mul-int v26, v26, v16

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 559
    .local v15, "vFullRow":[B
    mul-int/lit8 v26, v19, 0x3

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 560
    .local v3, "finalRow":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 561
    div-int/lit8 v4, v7, 0x2

    .line 562
    .local v4, "halfH":I
    mul-int v26, v24, v7

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 564
    mul-int v26, v13, v4

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 565
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 566
    mul-int v26, v18, v4

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 568
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 569
    div-int/lit8 v5, v8, 0x2

    .line 570
    .local v5, "halfW":I
    mul-int v26, v22, v8

    aget-byte v26, v21, v26

    const/16 v27, 0x0

    aput-byte v26, v25, v27

    .line 571
    mul-int v26, v11, v5

    aget-byte v26, v10, v26

    const/16 v27, 0x1

    aput-byte v26, v25, v27

    .line 572
    mul-int v26, v16, v5

    aget-byte v26, v15, v26

    const/16 v27, 0x2

    aput-byte v26, v25, v27

    .line 573
    mul-int/lit8 v26, v8, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/hardware/camera2/DngCreator;->yuvToRgb([BI[B)V

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 575
    .end local v5    # "halfW":I
    :cond_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 560
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 578
    .end local v4    # "halfH":I
    .end local v8    # "j":I
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 579
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 580
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 581
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 582
    return-object v2

    .line 555
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeDestroy()V
.end method

.method private synchronized native declared-synchronized nativeInit(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetDescription(Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V
.end method

.method private synchronized native declared-synchronized nativeSetOrientation(I)V
.end method

.method private synchronized native declared-synchronized nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V
.end method

.method private synchronized native declared-synchronized nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static toExifLatLong(D)[I
    .locals 10
    .param p0, "value"    # D

    .prologue
    const/4 v8, 0x1

    .line 614
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 615
    double-to-int v0, p0

    .line 616
    .local v0, "degrees":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    .line 617
    double-to-int v1, p0

    .line 618
    .local v1, "minutes":I
    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    .line 619
    double-to-int v2, p0

    .line 620
    .local v2, "seconds":I
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v8, v3, v8

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v4, 0x3

    aput v8, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/16 v4, 0x64

    const/4 v5, 0x5

    aput v4, v3, v5

    return-object v3
.end method

.method private writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "dngOutput"    # Ljava/io/OutputStream;
    .param p5, "pixelStride"    # I
    .param p6, "rowStride"    # I
    .param p7, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 475
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image with invalid width, height: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 476
    const-string/jumbo v5, ") passed to write"

    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 478
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v14, v3

    .line 479
    .local v14, "capacity":J
    move/from16 v0, p6

    int-to-long v4, v0

    move/from16 v0, p2

    int-to-long v6, v0

    mul-long/2addr v4, v6

    add-long v16, v4, p7

    .line 480
    .local v16, "totalSize":J
    cmp-long v3, v14, v16

    if-gez v3, :cond_2

    .line 481
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 482
    const-string/jumbo v5, " is too small (must be larger than "

    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 482
    const-string/jumbo v5, ")"

    .line 481
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_2
    mul-int v2, p5, p1

    .line 485
    .local v2, "minRowStride":I
    move/from16 v0, p6

    if-le v2, v0, :cond_3

    .line 486
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid image pixel stride, row byte width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 487
    const-string/jumbo v5, " is too large, expecting "

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 489
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 491
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v12

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p7

    .line 490
    invoke-direct/range {v3 .. v12}, Landroid/hardware/camera2/DngCreator;->nativeWriteImage(Ljava/io/OutputStream;IILjava/nio/ByteBuffer;IIJZ)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 473
    return-void
.end method

.method private static yuvToRgb([BI[B)V
    .locals 13
    .param p0, "yuvData"    # [B
    .param p1, "outOffset"    # I
    .param p2, "rgbOut"    # [B

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v11, 0x0

    const/high16 v10, 0x43000000    # 128.0f

    .line 499
    const/16 v0, 0xff

    .line 501
    .local v0, "COLOR_MAX":I
    const/4 v7, 0x0

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v6, v7

    .line 502
    .local v6, "y":F
    const/4 v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v2, v7

    .line 503
    .local v2, "cb":F
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-float v3, v7

    .line 506
    .local v3, "cr":F
    sub-float v7, v3, v10

    const v8, 0x3fb374bc    # 1.402f

    mul-float/2addr v7, v8

    add-float v5, v6, v7

    .line 507
    .local v5, "r":F
    sub-float v7, v2, v10

    const v8, 0x3eb0331e    # 0.34414f

    mul-float/2addr v7, v8

    sub-float v7, v6, v7

    sub-float v8, v3, v10

    const v9, 0x3f36d1e1    # 0.71414f

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 508
    .local v4, "g":F
    sub-float v7, v2, v10

    const v8, 0x3fe2d0e5    # 1.772f

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 511
    .local v1, "b":F
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p2, p1

    .line 512
    add-int/lit8 v7, p1, 0x1

    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 513
    add-int/lit8 v7, p1, 0x2

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p2, v7

    .line 498
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Landroid/hardware/camera2/DngCreator;->nativeDestroy()V

    .line 427
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
    .line 439
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 437
    return-void

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 440
    throw v0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null description passed to setDescription."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetDescription(Ljava/lang/String;)V

    .line 280
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Null location passed to setLocation"

    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 247
    .local v10, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 248
    .local v12, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    .line 250
    .local v14, "time":J
    invoke-static {v10, v11}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v3

    .line 251
    .local v3, "latTag":[I
    invoke-static {v12, v13}, Landroid/hardware/camera2/DngCreator;->toExifLatLong(D)[I

    move-result-object v5

    .line 252
    .local v5, "longTag":[I
    const-wide/16 v16, 0x0

    cmpl-double v2, v10, v16

    if-ltz v2, :cond_1

    const-string/jumbo v4, "N"

    .line 253
    .local v4, "latRef":Ljava/lang/String;
    :goto_0
    const-wide/16 v16, 0x0

    cmpl-double v2, v12, v16

    if-ltz v2, :cond_2

    const-string/jumbo v6, "E"

    .line 255
    .local v6, "longRef":Ljava/lang/String;
    :goto_1
    sget-object v2, Landroid/hardware/camera2/DngCreator;->sExifGPSDateStamp:Ljava/text/DateFormat;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "dateTag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    const/4 v2, 0x6

    new-array v8, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x1

    aput v2, v8, v9

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x2

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x3

    aput v2, v8, v9

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/DngCreator;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x4

    aput v2, v8, v9

    const/4 v2, 0x1

    const/4 v9, 0x5

    aput v2, v8, v9

    .local v8, "timeTag":[I
    move-object/from16 v2, p0

    .line 260
    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/DngCreator;->nativeSetGpsTags([ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;[I)V

    .line 261
    return-object p0

    .line 252
    .end local v4    # "latRef":Ljava/lang/String;
    .end local v6    # "longRef":Ljava/lang/String;
    .end local v7    # "dateTag":Ljava/lang/String;
    .end local v8    # "timeTag":[I
    :cond_1
    const-string/jumbo v4, "S"

    .restart local v4    # "latRef":Ljava/lang/String;
    goto :goto_0

    .line 253
    :cond_2
    const-string/jumbo v6, "W"

    .restart local v6    # "longRef":Ljava/lang/String;
    goto :goto_1
.end method

.method public setOrientation(I)Landroid/hardware/camera2/DngCreator;
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 135
    if-ltz p1, :cond_0

    .line 136
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v2, " is not a valid EXIF orientation value"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    if-nez p1, :cond_2

    .line 143
    const/16 p1, 0x9

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/DngCreator;->nativeSetOrientation(I)V

    .line 146
    return-object p0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;
    .locals 7
    .param p1, "pixels"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x100

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null argument to setThumbnail"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 170
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 172
    .local v0, "height":I
    if-gt v2, v6, :cond_1

    if-le v0, v6, :cond_2

    .line 173
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thumbnail dimensions width,height ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    const-string/jumbo v5, ","

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    const-string/jumbo v5, ") too large, dimensions must be smaller than "

    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_2
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 179
    .local v1, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v2, v0}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 181
    return-object p0
.end method

.method public setThumbnail(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;
    .locals 8
    .param p1, "pixels"    # Landroid/media/Image;

    .prologue
    const/16 v7, 0x100

    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Null argument to setThumbnail"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 206
    .local v0, "format":I
    const/16 v4, 0x23

    if-eq v0, v4, :cond_1

    .line 207
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported Image format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    .line 211
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 213
    .local v1, "height":I
    if-gt v3, v7, :cond_2

    if-le v1, v7, :cond_3

    .line 214
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thumbnail dimensions width,height ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 215
    const-string/jumbo v6, ","

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 215
    const-string/jumbo v6, ") too large, dimensions must be smaller than "

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_3
    invoke-static {p1}, Landroid/hardware/camera2/DngCreator;->convertToRGB(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 220
    .local v2, "rgbBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v3, v1}, Landroid/hardware/camera2/DngCreator;->nativeSetThumbnail(Ljava/nio/ByteBuffer;II)V

    .line 222
    return-object p0
.end method

.method public writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    .locals 10
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/nio/ByteBuffer;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null dngOutput passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    if-nez p2, :cond_1

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null size passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    if-nez p3, :cond_2

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null pixels passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative offset passed to writeByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 380
    .local v2, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 383
    .local v3, "height":I
    mul-int/lit8 v7, v2, 0x2

    .line 382
    const/4 v6, 0x2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 368
    return-void
.end method

.method public writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V
    .locals 11
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "pixels"    # Landroid/media/Image;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null dngOutput to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    if-nez p2, :cond_1

    .line 408
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Null pixels to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_1
    invoke-virtual {p2}, Landroid/media/Image;->getFormat()I

    move-result v0

    .line 412
    .local v0, "format":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported image format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_2
    invoke-virtual {p2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    .line 417
    .local v10, "planes":[Landroid/media/Image$Plane;
    if-eqz v10, :cond_3

    array-length v1, v10

    if-gtz v1, :cond_4

    .line 418
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Image with no planes passed to writeImage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_4
    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 422
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 423
    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    aget-object v1, v10, v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v5, p1

    .line 422
    invoke-direct/range {v1 .. v9}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(IILjava/nio/ByteBuffer;Ljava/io/OutputStream;IIJ)V

    .line 404
    return-void
.end method

.method public writeInputStream(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V
    .locals 8
    .param p1, "dngOutput"    # Ljava/io/OutputStream;
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "pixels"    # Ljava/io/InputStream;
    .param p4, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null dngOutput passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    if-nez p2, :cond_1

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null size passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    if-nez p3, :cond_2

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null pixels passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative offset passed to writeInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 325
    .local v4, "width":I
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 326
    .local v5, "height":I
    if-lez v4, :cond_4

    if-gtz v5, :cond_5

    .line 327
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Size with invalid width, height: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    const-string/jumbo v2, ") passed to writeInputStream"

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v6, p4

    .line 330
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/DngCreator;->nativeWriteInputStream(Ljava/io/OutputStream;Ljava/io/InputStream;IIJ)V

    .line 313
    return-void
.end method
