.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$DnsResolveTask;,
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field public static final NTP_RESOLVE_FAIL:I = 0x1

.field private static final NTP_RESOLVE_TIMEOUT:I = 0x32

.field public static final NTP_RESULT_SUCCESS:I = 0x2

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field public static final NTP_TIME_FAIL:I = 0x0

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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
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

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    return-wide v6

    :cond_0
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v8

    mul-long v6, v0, v8

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13

    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-nez v5, :cond_0

    add-int/lit8 v5, p2, 0x8

    const/4 v8, 0x0

    invoke-static {p1, p2, v5, v8}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
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

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;IZ)I
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Landroid/net/SntpClient$DnsResolveTask;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/net/SntpClient$DnsResolveTask;-><init>(Landroid/net/SntpClient;Landroid/net/SntpClient$DnsResolveTask;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v7, v8}, Landroid/net/SntpClient$DnsResolveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v6

    const-wide/16 v8, 0x32

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/InetAddress;

    move-object v2, v0

    if-nez v2, :cond_0

    const-string/jumbo v7, "SntpClient"

    const-string/jumbo v8, "[BigData] request resolve failed in DnsResolveTask()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SntpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BigData] request resolve failed: host = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_1
    move-exception v4

    const-string/jumbo v7, "SntpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BigData] request resolve timeout: host = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    const/16 v7, 0x7b

    invoke-virtual {p0, v2, v7, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v7, "SntpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BigData] request time failed : host = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    const/4 v7, 0x2

    return v7
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Landroid/net/SntpClient$DnsResolveTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/net/SntpClient$DnsResolveTask;-><init>(Landroid/net/SntpClient;Landroid/net/SntpClient$DnsResolveTask;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, v7}, Landroid/net/SntpClient$DnsResolveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    const-wide/16 v6, 0x32

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/InetAddress;

    move-object v2, v0

    if-nez v2, :cond_0

    const-string/jumbo v6, "SntpClient"

    const-string/jumbo v7, "request time failed in DnsResolveTask()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "SntpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request time failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_1
    move-exception v4

    const-string/jumbo v6, "SntpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request resolve timeout: host = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    const/16 v6, 0x7b

    invoke-virtual {p0, v2, v6, p2}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result v6

    return v6
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 36

    const/16 v21, 0x0

    const/16 v32, -0xfa

    invoke-static/range {v32 .. v32}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v10

    :try_start_0
    new-instance v28, Ljava/net/DatagramSocket;

    invoke-direct/range {v28 .. v28}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v32, 0x30

    move/from16 v0, v32

    new-array v4, v0, [B

    new-instance v11, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v11, v4, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v32, 0x1b

    const/16 v33, 0x0

    aput-byte v32, v4, v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-wide/from16 v2, v18

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v20, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v32, v0

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v32, v22, v16

    add-long v24, v18, v32

    const/16 v32, 0x0

    aget-byte v32, v4, v32

    shr-int/lit8 v32, v32, 0x6

    and-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    int-to-byte v8, v0

    const/16 v32, 0x0

    aget-byte v32, v4, v32

    and-int/lit8 v32, v32, 0x7

    move/from16 v0, v32

    int-to-byte v9, v0

    const/16 v32, 0x1

    aget-byte v32, v4, v32

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    const/16 v32, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v14

    const/16 v32, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v4, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v30

    move/from16 v0, v29

    move-wide/from16 v1, v30

    invoke-static {v8, v9, v0, v1, v2}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v32, v22, v16

    sub-long v34, v30, v14

    sub-long v26, v32, v34

    sub-long v32, v14, v12

    sub-long v34, v30, v24

    add-long v32, v32, v34

    const-wide/16 v34, 0x2

    div-long v6, v32, v34

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v6, v7}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "round trip: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "clock offset: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "ms"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v32, v24, v6

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/16 v32, 0x1

    return v32

    :catch_0
    move-exception v5

    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v32, "SntpClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "request time failed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v32, 0x0

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return v32

    :catchall_0
    move-exception v32

    :goto_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v32

    :catchall_1
    move-exception v32

    move-object/from16 v21, v28

    goto :goto_1

    :catch_1
    move-exception v5

    move-object/from16 v21, v28

    goto :goto_0
.end method
