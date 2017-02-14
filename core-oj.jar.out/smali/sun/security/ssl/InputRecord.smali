.class Lsun/security/ssl/InputRecord;
.super Ljava/io/ByteArrayInputStream;
.source "InputRecord.java"

# interfaces
.implements Lsun/security/ssl/Record;


# static fields
.field static final debug:Lsun/security/ssl/Debug;

.field private static final v2NoCipher:[B


# instance fields
.field private appDataValid:Z

.field private exlen:I

.field formatVerified:Z

.field private handshakeHash:Lsun/security/ssl/HandshakeHash;

.field private helloVersion:Lsun/security/ssl/ProtocolVersion;

.field private isClosed:Z

.field private lastHashed:I

.field private v2Buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/16 v0, 0x4219

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {p0, v0}, Lsun/security/ssl/InputRecord;->setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/ssl/InputRecord;->exlen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    return-void
.end method

.method private V2toV3ClientHello([B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/16 v8, 0x16

    const/4 v9, 0x0

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x3

    aget-byte v8, v8, v9

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    const/4 v9, 0x2

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v8, 0x1

    const/4 v9, 0x5

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0x9

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    const/16 v9, 0xa

    aput-byte v8, v7, v9

    const/16 v7, 0xb

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v0, v7, v8

    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v6, v7, v8

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    add-int v4, v7, v8

    add-int/lit8 v7, v0, 0x6

    add-int v5, v7, v6

    const/16 v7, 0x20

    if-ge v4, v7, :cond_1

    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v7, v4, 0x20

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {p1, v5, v7, v8, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v4

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    :goto_1
    sub-int/2addr v5, v6

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    int-to-byte v9, v6

    aput-byte v9, v7, v8

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {p1, v5, v7, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v6

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int/2addr v5, v0

    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v2, v7, 0x2

    const/4 v1, 0x0

    move v3, v2

    :goto_2
    if-ge v1, v0, :cond_3

    add-int v7, v5, v1

    aget-byte v7, p1, v7

    if-eqz v7, :cond_2

    move v2, v3

    :goto_3
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v4, -0x20

    add-int/2addr v7, v5

    iget-object v8, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/16 v10, 0x20

    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v7, v7, 0x20

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int/lit8 v2, v3, 0x1

    add-int v8, v5, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    aput-byte v8, v7, v3

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    add-int/lit8 v3, v2, 0x1

    add-int v8, v5, v1

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    aput-byte v8, v7, v2

    move v2, v3

    goto :goto_3

    :cond_3
    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v7, v7, 0x2

    sub-int v2, v3, v7

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    ushr-int/lit8 v9, v2, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    int-to-byte v9, v2

    aput-byte v9, v7, v8

    iget v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/2addr v7, v2

    iput v7, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x1

    aput-byte v9, v7, v8

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/4 v9, 0x0

    aput-byte v9, v7, v8

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    const/4 v9, 0x4

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v8, 0x0

    const/4 v9, 0x6

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    add-int/lit8 v8, v8, -0x4

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    const/4 v9, 0x7

    aput-byte v8, v7, v9

    iget-object v7, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v8, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v8, v8, -0x5

    add-int/lit8 v8, v8, -0x4

    int-to-byte v8, v8

    const/16 v9, 0x8

    aput-byte v8, v7, v9

    const/4 v7, 0x5

    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    return-void
.end method

.method static calculateRemainingLen(Lsun/security/ssl/MAC;II)I
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    move-result v0

    invoke-virtual {p0}, Lsun/security/ssl/MAC;->minimalPaddingLen()I

    move-result v1

    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p1, v2

    sub-int v2, v0, v1

    rsub-int/lit8 v2, v2, 0xd

    add-int/2addr p2, v2

    int-to-double v2, p1

    int-to-double v4, v0

    mul-double/2addr v4, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    int-to-double v4, p2

    int-to-double v6, v0

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Lsun/security/ssl/MAC;->hashBlockLen()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method static checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p4}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v8

    move-object v0, p4

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-eq v8, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal MAC error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p2, p3

    invoke-static {p1, v0, v6}, Lsun/security/ssl/InputRecord;->compareMacTags([BI[B)[I

    move-result-object v7

    aget v0, v7, v9

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method private static compareMacTags([BI[B)[I
    .locals 5

    const/4 v4, 0x0

    filled-new-array {v4, v4}, [I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_0

    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method static contentName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Change Cipher Spec"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Alert"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "Handshake"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "Application Data"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleUnknownRecord(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v10

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-eq v5, v6, :cond_0

    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v6, "SSLv2Hello is disabled"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v12

    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v7, 0x4

    aget-byte v6, v6, v7

    invoke-static {v5, v6}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v4

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-ne v4, v5, :cond_1

    :try_start_0
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, p2, v5, v7, v6}, Lsun/security/ssl/InputRecord;->writeBuffer(Ljava/io/OutputStream;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Unsupported SSL v2.0 ClientHello"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x3

    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    if-nez v5, :cond_2

    new-array v5, v2, [B

    iput-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    :cond_2
    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v2, 0x5

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    iget v6, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v6, -0x5

    add-int/lit8 v7, v2, 0x5

    iget v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    sub-int/2addr v7, v8

    invoke-direct {p0, p1, v5, v6, v7}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    if-gez v3, :cond_3

    new-instance v5, Ljava/io/EOFException;

    const-string/jumbo v6, "SSL peer shut down incorrectly"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v9, p0, Lsun/security/ssl/InputRecord;->exlen:I

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-direct {p0, v5, v10, v12}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    invoke-direct {p0, v5, v9, v2}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    iget-object v5, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    invoke-direct {p0, v5}, Lsun/security/ssl/InputRecord;->V2toV3ClientHello([B)V

    iput-object v11, p0, Lsun/security/ssl/InputRecord;->v2Buf:[B

    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v5, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "record"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", READ:  SSL v2, contentType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v7

    invoke-static {v7}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", translated length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v10

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    array-length v5, v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v1

    sget-object v6, Lsun/security/ssl/InputRecord;->v2NoCipher:[B

    aget-byte v6, v6, v1

    if-eq v5, v6, :cond_7

    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Unrecognized SSL message, plaintext connection?"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "SSL V2.0 servers are not supported."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private hashInternal([BII)V
    .locals 5

    sget-object v2, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[read] MD5 and SHA1 hashes:  len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v2, p1, p2, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readFully(Ljava/io/InputStream;[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_2

    add-int v5, p3, v3

    sub-int v6, p4, v3

    invoke-virtual {p1, p2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    return v4

    :cond_0
    sget-object v5, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "packet"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    add-int v5, p3, v3

    invoke-static {p2, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[Raw read]: length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v5}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/2addr v3, v4

    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/2addr v5, v4

    iput v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    goto :goto_0

    :cond_2
    return v3

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v4, v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v3

    iget v4, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_0

    iget-byte v4, v3, Lsun/security/ssl/ProtocolVersion;->major:B

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    iget-byte v5, v5, Lsun/security/ssl/ProtocolVersion;->major:B

    if-le v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljavax/net/ssl/SSLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported record version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int v0, v4, v5

    if-ltz v0, :cond_2

    const v4, 0x8214

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad InputRecord size, count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", buf.length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x5

    if-le v0, v4, :cond_4

    add-int/lit8 v4, v0, 0x5

    new-array v1, v4, [B

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v5, 0x5

    invoke-static {v4, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    :cond_4
    iget v4, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v5, v0, 0x5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, p0, Lsun/security/ssl/InputRecord;->exlen:I

    add-int/lit8 v6, v0, 0x5

    iget v7, p0, Lsun/security/ssl/InputRecord;->exlen:I

    sub-int/2addr v6, v7

    invoke-direct {p0, p1, v4, v5, v6}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string/jumbo v5, "SSL peer shut down incorrectly"

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    add-int/lit8 v4, v0, 0x5

    iput v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v8, p0, Lsun/security/ssl/InputRecord;->exlen:I

    sget-object v4, Lsun/security/ssl/InputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "record"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ltz v4, :cond_6

    iget v4, p0, Ljava/io/ByteArrayInputStream;->count:I

    const/16 v5, 0x4214

    if-le v4, v5, :cond_7

    :cond_6
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Bad InputRecord size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", READ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v6

    invoke-static {v6}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    iput v1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    return-void
.end method

.method contentType()B
    .locals 2

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method decrypt(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v15

    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    add-int/lit8 v12, v1, -0x5

    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isNullCipher()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v12}, Lsun/security/ssl/CipherBox;->sanityCheck(II)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v2, "ciphertext sanity check failed"

    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v12, v15}, Lsun/security/ssl/CipherBox;->decrypt([BIII)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int v13, v1, v15

    add-int/lit8 v4, v13, -0x5

    if-gez v4, :cond_3

    if-nez v14, :cond_2

    new-instance v14, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "bad record"

    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v12, 0x5

    sub-int v13, v1, v15

    add-int/lit8 v4, v13, -0x5

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v14, :cond_4

    new-instance v14, Ljavax/crypto/BadPaddingException;

    const-string/jumbo v1, "bad record MAC"

    invoke-direct {v14, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lsun/security/ssl/CipherBox;->isCBCMode()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v12, v4}, Lsun/security/ssl/InputRecord;->calculateRemainingLen(Lsun/security/ssl/MAC;II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v1, v1

    if-le v8, v1, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Internal buffer capacity error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v11

    move-object v14, v11

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lsun/security/ssl/InputRecord;->contentType()B

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/io/ByteArrayInputStream;->buf:[B

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v9, p1

    invoke-static/range {v5 .. v10}, Lsun/security/ssl/InputRecord;->checkMacTags(B[BIILsun/security/ssl/MAC;Z)Z

    :cond_6
    if-eqz v14, :cond_7

    throw v14

    :cond_7
    return-void
.end method

.method doHashes()V
    .locals 3

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    sub-int v0, v1, v2

    if-lez v0, :cond_0

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/InputRecord;->hashInternal([BII)V

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    :cond_0
    return-void
.end method

.method enableFormatChecks()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    return-void
.end method

.method getHandshakeHash()Lsun/security/ssl/HandshakeHash;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    return-object v0
.end method

.method getHelloVersion()Lsun/security/ssl/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    return-object v0
.end method

.method ignore(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    :cond_0
    return-void
.end method

.method isAppDataValid()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    return v0
.end method

.method queueHandshake(Lsun/security/ssl/InputRecord;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x5

    invoke-virtual {p0}, Lsun/security/ssl/InputRecord;->doHashes()V

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-le v2, v7, :cond_1

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v2, v3

    if-eqz v0, :cond_0

    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    invoke-static {v2, v3, v4, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    iput v7, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    add-int/lit8 v2, v0, 0x5

    iput v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    add-int v0, v2, v3

    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    array-length v2, v2

    if-ge v2, v0, :cond_2

    new-array v1, v0, [B

    iget-object v2, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    :cond_2
    iget-object v2, p1, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v6, p0, Ljava/io/ByteArrayInputStream;->count:I

    sub-int v6, v0, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v2, p1, Lsun/security/ssl/InputRecord;->lastHashed:I

    iget v3, p1, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int v0, v2, v3

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    if-ne v2, v7, :cond_3

    iget v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    add-int/2addr v2, v0

    iput v2, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    iget v2, p1, Ljava/io/ByteArrayInputStream;->count:I

    iput v2, p1, Ljava/io/ByteArrayInputStream;->pos:I

    return-void

    :cond_3
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string/jumbo v3, "?? confused buffer hashing ??"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->isClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lsun/security/ssl/InputRecord;->exlen:I

    if-ge v1, v5, :cond_2

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/InputRecord;->exlen:I

    iget v3, p0, Lsun/security/ssl/InputRecord;->exlen:I

    rsub-int/lit8 v3, v3, 0x5

    invoke-direct {p0, p1, v1, v2, v3}, Lsun/security/ssl/InputRecord;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/io/EOFException;

    const-string/jumbo v2, "SSL peer shut down incorrectly"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput v5, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v5, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v1, p0, Lsun/security/ssl/InputRecord;->lastHashed:I

    :cond_2
    iget-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/ssl/InputRecord;->formatVerified:Z

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v1, v1, v4

    const/16 v2, 0x16

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    aget-byte v1, v1, v4

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->handleUnknownRecord(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/InputRecord;->readV3Record(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method setAppDataValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/security/ssl/InputRecord;->appDataValid:Z

    return-void
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/InputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    return-void
.end method

.method setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/InputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    return-void
.end method

.method writeBuffer(Ljava/io/OutputStream;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
