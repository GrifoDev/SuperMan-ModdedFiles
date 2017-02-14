.class Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SntpClient"
.end annotation


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13

    const/16 v9, 0x80

    aget-byte v0, p1, p2

    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    move v6, v2

    goto :goto_2

    :cond_3
    move v7, v3

    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10

    const-wide/16 v6, 0x3e8

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v0

    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13

    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 32

    :try_start_0
    new-instance v19, Ljava/net/DatagramSocket;

    invoke-direct/range {v19 .. v19}, Ljava/net/DatagramSocket;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v28, 0x30

    move/from16 v0, v28

    new-array v5, v0, [B

    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v28, v0

    const/16 v29, 0x7b

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v28, 0x1b

    const/16 v29, 0x0

    aput-byte v28, v5, v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/16 v28, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->writeTimeStamp([BIJ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v28, v20, v14

    add-long v22, v16, v28

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    const/16 v28, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    const/16 v28, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    const/16 v28, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v26

    sub-long v28, v20, v14

    sub-long v30, v26, v12

    sub-long v24, v28, v30

    sub-long v28, v12, v10

    sub-long v30, v26, v22

    add-long v28, v28, v30

    const-wide/16 v30, 0x2

    div-long v6, v28, v30

    add-long v28, v22, v6

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v28, 0x1

    return v28

    :catch_0
    move-exception v8

    sget-boolean v28, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_0

    const-string/jumbo v28, "SntpClient"

    const-string/jumbo v29, "In requestTime: Exception"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 v28, 0x0

    return v28
.end method
