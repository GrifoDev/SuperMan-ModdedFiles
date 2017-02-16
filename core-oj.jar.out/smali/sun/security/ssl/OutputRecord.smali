.class Lsun/security/ssl/OutputRecord;
.super Ljava/io/ByteArrayOutputStream;
.source "OutputRecord.java"

# interfaces
.implements Lsun/security/ssl/Record;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static V3toV2CipherMap1:[I

.field private static V3toV2CipherMap3:[I

.field static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private final contentType:B

.field private firstMessage:Z

.field private handshakeHash:Lsun/security/ssl/HandshakeHash;

.field private helloVersion:Lsun/security/ssl/ProtocolVersion;

.field private lastHashed:I

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    const-class v0, Lsun/security/ssl/OutputRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/OutputRecord;->-assertionsDisabled:Z

    .line 67
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    .line 484
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 483
    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    .line 486
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 485
    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    .line 51
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 484
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x2
        0x1
        -0x1
        0x4
        0x5
        -0x1
        0x6
        0x7
    .end array-data

    .line 486
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x80
        0x80
        -0x1
        0x80
        0x80
        -0x1
        0x40
        0xc0
    .end array-data
.end method

.method constructor <init>(B)V
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 86
    invoke-static {p1}, Lsun/security/ssl/OutputRecord;->recordSize(B)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/OutputRecord;-><init>(BI)V

    .line 85
    return-void
.end method

.method constructor <init>(BI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "size"    # I

    .prologue
    .line 76
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 77
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 78
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 81
    iput-byte p1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    .line 82
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    .line 75
    return-void
.end method

.method private V3toV2CipherSuite(BB)I
    .locals 4
    .param p1, "byte1"    # B
    .param p2, "byte2"    # B

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte v3, v0, v1

    .line 501
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte p1, v0, v1

    .line 502
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte p2, v0, v1

    .line 504
    and-int/lit16 v0, p2, 0xff

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 505
    sget-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 506
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 509
    :cond_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    aget v2, v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 510
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    aput-byte v3, v0, v1

    .line 511
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    aget v2, v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 513
    const/4 v0, 0x6

    return v0
.end method

.method private V3toV2ClientHello([B)V
    .locals 21
    .param p1, "v3Msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 416
    const/16 v16, 0x22

    .line 417
    .local v16, "v3SessionIdLenOffset":I
    aget-byte v15, p1, v16

    .line 418
    .local v15, "v3SessionIdLen":I
    add-int/lit8 v12, v15, 0x23

    .line 419
    .local v12, "v3CipherSpecLenOffset":I
    aget-byte v17, p1, v12

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    .line 420
    add-int/lit8 v18, v12, 0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 419
    add-int v11, v17, v18

    .line 421
    .local v11, "v3CipherSpecLen":I
    div-int/lit8 v7, v11, 0x2

    .line 429
    .local v7, "cipherSpecs":I
    add-int/lit8 v13, v12, 0x2

    .line 430
    .local v13, "v3CipherSpecOffset":I
    const/4 v10, 0x0

    .line 431
    .local v10, "v2CipherSpecLen":I
    const/16 v17, 0xb

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    .line 432
    const/4 v8, 0x0

    .line 433
    .local v8, "containsRenegoInfoSCSV":Z
    const/4 v9, 0x0

    .local v9, "i":I
    move v14, v13

    .end local v13    # "v3CipherSpecOffset":I
    .local v14, "v3CipherSpecOffset":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 436
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "v3CipherSpecOffset":I
    .restart local v13    # "v3CipherSpecOffset":I
    aget-byte v5, p1, v14

    .line 437
    .local v5, "byte1":B
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "v3CipherSpecOffset":I
    .restart local v14    # "v3CipherSpecOffset":I
    aget-byte v6, p1, v13

    .line 438
    .local v6, "byte2":B
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    move-result v17

    add-int v10, v10, v17

    .line 439
    if-nez v8, :cond_0

    .line 440
    if-nez v5, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    .line 441
    const/4 v8, 0x1

    .line 433
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 445
    .end local v5    # "byte1":B
    .end local v6    # "byte2":B
    :cond_1
    if-nez v8, :cond_2

    .line 446
    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    move-result v17

    add-int v10, v10, v17

    .line 453
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x2

    aput-byte v18, v17, v19

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v18, p1, v18

    const/16 v19, 0x3

    aput-byte v18, v17, v19

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v18, p1, v18

    const/16 v19, 0x4

    aput-byte v18, v17, v19

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    ushr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    aput-byte v18, v17, v19

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    int-to-byte v0, v10

    move/from16 v18, v0

    const/16 v19, 0x6

    aput-byte v18, v17, v19

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x7

    aput-byte v18, v17, v19

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x8

    aput-byte v18, v17, v19

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x9

    aput-byte v18, v17, v19

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x20

    const/16 v19, 0xa

    aput-byte v18, v17, v19

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v18, v0

    ushr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v18, v17, v19

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v19, v17, v18

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    aput-byte v18, v17, v19

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    .line 415
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 243
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 244
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 241
    :cond_0
    return-void
.end method

.method private hashInternal([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 155
    sget-object v2, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data"

    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    :try_start_0
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 159
    .local v1, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[write] MD5 and SHA1 hashes:  len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 162
    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    .line 161
    invoke-direct {v2, p1, v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 161
    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-virtual {v2, p1, v3, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    .line 167
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    .line 154
    return-void

    .line 163
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static recordSize(B)I
    .locals 1
    .param p0, "type"    # B

    .prologue
    .line 94
    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-ne p0, v0, :cond_1

    .line 95
    :cond_0
    const/16 v0, 0x21b

    return v0

    .line 97
    :cond_1
    const/16 v0, 0x4219

    return v0
.end method

.method private useV2Hello()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    iget-boolean v2, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    sget-object v3, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-ne v2, v3, :cond_1

    .line 401
    iget-byte v2, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    .line 402
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    if-ne v2, v0, :cond_1

    .line 403
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/16 v3, 0x2b

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 403
    goto :goto_0

    :cond_1
    move v0, v1

    .line 399
    goto :goto_0
.end method


# virtual methods
.method addMAC(Lsun/security/ssl/MAC;)V
    .locals 7
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    .line 205
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 207
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v4, v0, -0x5

    const/4 v3, 0x5

    move-object v0, p1

    .line 206
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    move-result-object v6

    .line 208
    .local v6, "hash":[B
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 196
    .end local v6    # "hash":[B
    :cond_1
    return-void
.end method

.method final availableDataBytes()I
    .locals 2

    .prologue
    .line 226
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v1, -0x5

    .line 227
    .local v0, "dataSize":I
    rsub-int v1, v0, 0x4000

    return v1
.end method

.method final contentType()B
    .locals 1

    .prologue
    .line 252
    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    return v0
.end method

.method doHashes()V
    .locals 3

    .prologue
    .line 143
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    sub-int v0, v1, v2

    .line 145
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 146
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/OutputRecord;->hashInternal([BII)V

    .line 147
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v1, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    .line 142
    :cond_0
    return-void
.end method

.method encrypt(Lsun/security/ssl/CipherBox;)V
    .locals 3
    .param p1, "box"    # Lsun/security/ssl/CipherBox;

    .prologue
    const/4 v2, 0x5

    .line 216
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v1, -0x5

    .line 217
    .local v0, "len":I
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {p1, v1, v2, v0}, Lsun/security/ssl/CipherBox;->encrypt([BII)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 215
    return-void
.end method

.method isAlert(B)Z
    .locals 4
    .param p1, "description"    # B

    .prologue
    const/4 v3, 0x6

    const/4 v0, 0x0

    .line 184
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    if-le v1, v3, :cond_1

    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    aget-byte v1, v1, v3

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 188
    :cond_1
    return v0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 121
    const/4 v0, 0x5

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 122
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 119
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 2
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    .prologue
    .line 131
    sget-boolean v0, Lsun/security/ssl/OutputRecord;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    .line 130
    return-void
.end method

.method declared-synchronized setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    monitor-enter p0

    .line 112
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 111
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    monitor-enter p0

    .line 105
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 104
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "holdRecord"    # Z
    .param p3, "heldRecordBuffer"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 271
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v7, v0, -0x5

    .line 277
    .local v7, "length":I
    if-gez v7, :cond_1

    .line 278
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output record size too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_5

    .line 283
    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "handshake"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    .line 282
    if-eqz v0, :cond_5

    .line 284
    :cond_2
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 285
    :cond_3
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 286
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    const-string/jumbo v2, ", WRITE: "

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    const-string/jumbo v2, " "

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v2

    invoke-static {v2}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    const-string/jumbo v2, ", length = "

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    :cond_5
    iget-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lsun/security/ssl/OutputRecord;->useV2Hello()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 299
    add-int/lit8 v0, v7, -0x4

    new-array v8, v0, [B

    .line 300
    .local v8, "v3Msg":[B
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v8

    const/16 v2, 0x9

    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    invoke-direct {p0, v8}, Lsun/security/ssl/OutputRecord;->V3toV2ClientHello([B)V

    .line 302
    iget-object v0, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V

    .line 303
    iput v4, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    .line 304
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    .line 305
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "record"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string/jumbo v2, ", WRITE: SSLv2 client hello message"

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string/jumbo v2, ", length = "

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v2, -0x2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    .end local v8    # "v3Msg":[B
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, "debugOffset":I
    if-eqz p2, :cond_8

    .line 339
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/OutputRecord;->writeBuffer(Ljava/io/OutputStream;[BIII)V

    .line 366
    :goto_1
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->reset()V

    .line 266
    return-void

    .line 315
    .end local v5    # "debugOffset":I
    :cond_7
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    aput-byte v1, v0, v3

    .line 316
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->major:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 317
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->minor:B

    aput-byte v1, v0, v4

    .line 318
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    shr-int/lit8 v1, v7, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 319
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    int-to-byte v1, v7

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    goto :goto_0

    .line 343
    .restart local v5    # "debugOffset":I
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 344
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    .line 347
    .local v6, "heldLen":I
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lsun/security/ssl/OutputRecord;->ensureCapacity(I)V

    .line 350
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v0, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 354
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 353
    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, v6

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 358
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 361
    move v5, v6

    .line 363
    .end local v6    # "heldLen":I
    :cond_9
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/OutputRecord;->writeBuffer(Ljava/io/OutputStream;[BIII)V

    goto :goto_1
.end method

.method writeBuffer(Ljava/io/OutputStream;[BIII)V
    .locals 6
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "debugOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 378
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 381
    sget-object v3, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "packet"

    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 385
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v3, p3, p5

    sub-int v4, p4, p5

    .line 384
    invoke-static {p2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Raw write]: length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 388
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method
